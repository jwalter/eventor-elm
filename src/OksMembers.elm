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
  let
    sortedMembers =
      (List.sortBy (\m -> m.name.family ++ m.name.given) org.persons)
  in
    div []
      (
        [ h2 [] [text "Medlemmar"]
        , h4 [] [text (toString (List.length sortedMembers))]] ++
      List.map (\m -> memberView m) sortedMembers)
    

memberView : Person -> Html Msg
memberView member =
  tr []
    [ td [] [text member.name.given]
    , td [] [text member.name.family]
    , td [] [(text member.birthDate)]
    , td [] [(text member.phoneNumber)]
    , td [] [(text member.mailAddress)]]

-- SUBSCRIPTIONS
subscriptions : PersonList -> Sub Msg
subscriptions model =
  Sub.none

-- HTTP
loadEventorPersonList : Cmd Msg
loadEventorPersonList =
  let
    path =
      "persons/organisations/512?includeContactDetails=true"
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
