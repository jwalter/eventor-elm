module Competitions exposing (Model)

import Html exposing (..)
import Html.App as Html
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Http
import Json.Decode exposing (int, string, float, list, Decoder, at, decodeString)
import Task
import String
import Debug exposing (log)

import Eventor exposing (fetchData)
import EventorDecode exposing (..)
import Competition exposing (Competition)
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
type alias Model =
  { competitions : List Competition
  , shownCompetition : String
  }

init : (Model, Cmd Msg)
init =
  ( Model [] ""
  , loadEventorCompetitions
  )

-- UPDATE
type Msg
  = ShowRaceDetails String
  | FetchSucceed (List Competition)
  | FetchFail Http.Error
  | CompetitionMsg Competition.Msg

update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    ShowRaceDetails id ->
      ({model | shownCompetition = id}, log ("show race " ++ id) Cmd.none)

    FetchSucceed competitions ->
      (Model competitions "", Cmd.none)

    FetchFail x ->
      ((Debug.log (httpErrorMessage x) model), Cmd.none)

    CompetitionMsg msg ->
      (model, Cmd.none)

-- VIEW
view : Model -> Html Msg
view model =
  let
    races = allRaces model.competitions
    sorted = List.sortBy (\c -> c.startDate) races
  in
    div []
      (
        [ h2 [] [ text "Tävlingar" ]
        , h4 [] [ text (toString (List.length sorted)) ]
        , div [] (List.map (\m -> competitionView m) sorted)
        , div [] [ competitionDetails model ]
        ]
      )

competitionDetails : Model -> Html Msg
competitionDetails model =
  Html.map CompetitionMsg (Competition.view (List.head (List.filter (\c -> c.id == model.shownCompetition) model.competitions)))

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

competitionView : Race -> Html Msg
competitionView race =
  tr []
    [ td [ onClick (ShowRaceDetails race.id) ] [text race.name]
    , td [] [text race.startDate]
    ]

-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none

-- HTTP
loadEventorCompetitions : Cmd Msg
loadEventorCompetitions =
  let
    path =
      "events?fromDate=2016-06-28&toDate=2016-07-30&classificationIds=1,2,3,6"
  in
    loadEventorData path (at ["EventList", "Event"] (list competition))

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
