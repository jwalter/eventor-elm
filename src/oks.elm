import Html exposing (..)
import Html.App as Html
import Http
import Json.Decode exposing (int, string, float, list, Decoder, at, decodeString)
import Task

import Eventor exposing (fetchData)
import Organisation exposing (Organisation)
import OrgName exposing (OrgName)
import Language exposing (Language)

main : Program Never
main =
  Html.program
    { init = init
    , view = view
    , update = update
    , subscriptions = subscriptions
    }

-- MODEL
  
init : (Organisation, Cmd Msg)
init =
  ( Organisation [""] [(OrgName "" (Language ""))]
  , loadEventorOrganisation
  )

-- UPDATE
type Msg
  = MorePlease
  | FetchSucceed Organisation
  | FetchFail Http.Error

update : Msg -> Organisation -> (Organisation, Cmd Msg)
update msg org =
  case msg of
    MorePlease ->
      (org, loadEventorOrganisation)

    FetchSucceed newOrg ->
      (newOrg, Cmd.none)

    FetchFail x ->
      ((Debug.log (httpErrorMessage x) org), Cmd.none)

-- VIEW
view : Organisation -> Html Msg
view org =
  div []
    [ h2 [] [text (toString (List.map (\o -> o.name) org.orgName))]
    ]

-- SUBSCRIPTIONS
subscriptions : Organisation -> Sub Msg
subscriptions model =
  Sub.none

-- HTTP
loadEventorOrganisation : Cmd Msg
loadEventorOrganisation =
  let
    path =
      "organisation/512"
  in
    loadEventorData path Organisation.decoder

loadEventorData : String -> Decoder Organisation -> Cmd Msg
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
