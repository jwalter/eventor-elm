import Html exposing (..)
import Html.App as Html
import Http
import Json.Decode exposing (int, string, float, list, Decoder, at, decodeString)
import Task

import Eventor exposing (fetchData)
import PersonList exposing (PersonList)
import Person exposing (Person)

main : Program Never
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- MODEL
  
init : (PersonList, Cmd Msg)
init =
  ( PersonList.empty
  , loadEventorPersonList
  )

-- UPDATE
type Msg
  = MorePlease
  | FetchSucceed PersonList
  | FetchFail Http.Error

update : Msg -> PersonList -> (PersonList, Cmd Msg)
update msg org =
  case msg of
    MorePlease ->
      (org, loadEventorPersonList)

    FetchSucceed newOrg ->
      (newOrg, Cmd.none)

    FetchFail x ->
      ((Debug.log (httpErrorMessage x) org), Cmd.none)

-- VIEW
view : PersonList -> Html Msg
view org =
  div []
    ([ h2 [] [text "Medlemmar"]] ++
    List.map (\m -> memberView m) org.persons)
    

memberView : Person -> Html Msg
memberView member =
  div []
    [ div [] [text (toString (List.map (\n -> n.family) member.name))]]

-- SUBSCRIPTIONS
subscriptions : PersonList -> Sub Msg
subscriptions model =
  Sub.none

-- HTTP
loadEventorPersonList : Cmd Msg
loadEventorPersonList =
  let
    path =
      "persons/organisations/512"
  in
    loadEventorData path (at ["PersonList"] PersonList.decoder)

loadEventorData : String -> Decoder PersonList -> Cmd Msg
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
