import Html exposing (..)
import Html.App as Html
import Http
import Json.Decode exposing (int, string, float, list, Decoder, at, decodeString)
import Task
import String

import Eventor exposing (fetchData)
import Competition exposing (Competition, decoder)
import Race exposing (Race)

main : Program Never
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- MODEL
  
init : (List Competition, Cmd Msg)
init =
  ( []
  , loadEventorCompetitions
  )

-- UPDATE
type Msg
  = MorePlease
  | FetchSucceed (List Competition)
  | FetchFail Http.Error

update : Msg -> List Competition -> (List Competition, Cmd Msg)
update msg org =
  case msg of
    MorePlease ->
      (org, loadEventorCompetitions)

    FetchSucceed newOrg ->
      (newOrg, Cmd.none)

    FetchFail x ->
      ((Debug.log (httpErrorMessage x) org), Cmd.none)

-- VIEW
view : List Competition -> Html Msg
view competitions =
  let
    races = allRaces competitions
    sorted = List.sortBy (\c -> c.startDate) races
  in
    div []
      (
        [ h2 [] [text "Tävlingar"]
        , h4 [] [text (toString (List.length sorted))]] ++
      List.map (\m -> memberView m) sorted)
    
allRaces : List Competition -> List Race
allRaces competitions =
  List.foldr (\c all -> (List.append all (List.map (mergeNames c) c.races))) [] competitions

mergeNames : Competition -> Race -> Race
mergeNames competition race =
  let
    name =
      if String.length race.name > 0 then
        competition.name ++ ", " ++ race.name
      else
        competition.name
  in
    {race | name = name}

memberView : Race -> Html Msg
memberView member =
  tr []
    [ td [] [text member.name]
    , td [] [text member.startDate]]

-- SUBSCRIPTIONS
subscriptions : List Competition -> Sub Msg
subscriptions model =
  Sub.none

-- HTTP
loadEventorCompetitions : Cmd Msg
loadEventorCompetitions =
  let
    path =
      "events?fromDate=2016-06-28&toDate=2016-07-30&classificationIds=1,2,3,6"
  in
    loadEventorData path (at ["EventList", "Event"] (list Competition.decoder))

loadEventorData : String -> Decoder (List Competition) -> Cmd Msg
loadEventorData path decoder =
  let
    url =
      "http://localhost:8080/api/" ++ path
  in
    Task.perform FetchFail FetchSucceed (decodeUrlResponse url decoder)
  
decodeUrlResponse : String -> Decoder a -> Task.Task Http.Error a
decodeUrlResponse url decoder =
  Http.fromJson decoder (fetchData url)
    

httpErrorMessage : Http.Error -> String
httpErrorMessage error =
  case error of
    Http.Timeout ->
      "Timeout"
    Http.NetworkError ->
      "Network error"
    Http.UnexpectedPayload  s ->
      "Unexpected payload: " ++ s
    Http.BadResponse n s ->
      "Bad response"
