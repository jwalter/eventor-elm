module Competitions.Load exposing (loadEventorCompetitions, loadEventorStartList)

import Date
import Http
import Json.Decode exposing (list, Decoder, at)
import Task
import Time exposing (Time)
import Competitions.Messages exposing (..)
import Competitions.Models exposing (..)
import Utils.Date as DateUtils
import Eventor.Api exposing (fetchData)
import Eventor.Decode exposing (competition, startList)


-- HTTP


baseUrl : String
baseUrl =
    --"http://airnst.local:8080/api/"
    "https://eventor-proxy-kxfcsvyyhv.now.sh/api/"


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
                baseUrl ++ "events?fromDate=" ++ fromDate ++ "&toDate=" ++ toDate ++ "&classificationIds=1,2,3,6"
    in
        loadTimeDependantEventorData pathBuilder (at [ "EventList", "Event" ] (list competition))


loadEventorStartList : CompetitionId -> Cmd Msg
loadEventorStartList competitionId =
    let
        path = baseUrl ++ "starts/event?eventId=" ++ competitionId
    in

        loadEventorDatas path startList


formatted : Time -> String
formatted time =
    time
        |> Date.fromTime
        |> DateUtils.format

loadEventorDatas : String -> Decoder StartList -> Cmd Msg
loadEventorDatas url decoder =
    let
        httpTask =
            decodeUrlResponse url decoder

    in
        Task.perform FetchFail FetchStartListSucceed httpTask

loadTimeDependantEventorData : (Time -> String) -> Decoder (List Competition) -> Cmd Msg
loadTimeDependantEventorData pathBuilder decoder =
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
