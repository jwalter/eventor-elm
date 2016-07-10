module Competitions.Load exposing (..)

import Http
import Json.Decode exposing (list, Decoder, at)
import Task
import Competitions.Messages exposing (..)
import Competitions.Models exposing (Competition)
import Eventor.Api exposing (fetchData)
import Eventor.Decode exposing (competition)


-- HTTP


loadEventorCompetitions : Cmd Msg
loadEventorCompetitions =
    let
        path =
            "events?fromDate=2016-06-28&toDate=2016-07-30&classificationIds=1,2,3,6"
    in
        loadEventorData path (at [ "EventList", "Event" ] (list competition))


loadEventorData : String -> Decoder (List Competition) -> Cmd Msg
loadEventorData path decoder =
    let
        url =
            "https://eventor-proxy-kxfcsvyyhv.now.sh/api/" ++ path
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

        Http.UnexpectedPayload s ->
            "Unexpected payload: " ++ s

        Http.BadResponse n s ->
            "Bad response"
