module Competitions.Load exposing (..)

import Date exposing (Month)
import Http
import Json.Decode exposing (list, Decoder, at)
import Task
import Time exposing (Time)
import Competitions.Messages exposing (..)
import Competitions.Models exposing (..)
import Eventor.Api exposing (fetchData)
import Eventor.Decode exposing (competition)


-- HTTP


loadEventorCompetitions : CompetitionsFilter -> Cmd Msg
loadEventorCompetitions filter =
    let
        fromDate = formatted filter.from
        toDate = formatted filter.to
        path =
            "events?fromDate=" ++ fromDate ++ "&toDate=" ++ toDate ++ "&classificationIds=1,2,3,6"
    in
        loadEventorData path (at [ "EventList", "Event" ] (list competition))

formatted : Time -> String
formatted time =
    let
        date = Date.fromTime time
    in
        toString (Date.year date) ++ "-" ++ toString (monthNumber (Date.month date)) ++ "-" ++ toString (Date.day date)

monthNumber : Month -> Int
monthNumber month =
    case month of
        Date.Jan ->
            1

        Date.Feb ->
            2

        Date.Mar ->
            3

        Date.Apr ->
            4

        Date.May ->
            5

        Date.Jun ->
            6

        Date.Jul ->
            7

        Date.Aug ->
            8

        Date.Sep ->
            9

        Date.Oct ->
            10

        Date.Nov ->
            11

        Date.Dec ->
            12
      
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

        Http.UnexpectedPayload s ->
            "Unexpected payload: " ++ s

        Http.BadResponse n s ->
            "Bad response"
