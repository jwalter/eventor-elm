module Competitions.Load exposing (..)

import Date
import Http
import Json.Decode exposing (list, Decoder, at)
import Task
import Time exposing (Time)
import Competitions.Messages exposing (..)
import Competitions.Models exposing (..)
import Utils.Date as DateUtils
import Eventor.Api exposing (fetchData)
import Eventor.Decode exposing (competition)


-- HTTP


loadEventorCompetitions : (Time -> CompetitionsFilter) -> Cmd Msg
loadEventorCompetitions filterBuilder =
    let
        pathBuilder time =
            let
                fromDate =
                    formatted (filterBuilder time).from
                toDate =
                    formatted (filterBuilder time).to
            in
                "http://localhost:8080/api/events?fromDate=" ++ fromDate ++ "&toDate=" ++ toDate ++ "&classificationIds=1,2,3,6"
    in
        loadEventorData pathBuilder (at [ "EventList", "Event" ] (list competition))


formatted : Time -> String
formatted time =
    time
        |> Date.fromTime
        |> DateUtils.format


loadEventorData : (Time -> String) -> Decoder (List Competition) -> Cmd Msg
loadEventorData pathBuilder decoder =
    let
        httpTask time =
            decodeUrlResponse (pathBuilder time) decoder

        compoundTask =
            Time.now `Task.andThen` \time -> httpTask time
    in
        Task.perform FetchFail FetchSucceed compoundTask


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
