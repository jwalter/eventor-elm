module Eventor.Decode exposing (competition, race, startList)

import Json.Decode exposing (string, int, list, at, map, oneOf, maybe, Decoder, decodeString, (:=), andThen)
import Json.Decode.Pipeline exposing (decode, required, requiredAt, optional, optionalAt, custom, hardcoded)
import Eventor.JsonSupport exposing (insideList)
import Competitions.Models exposing (..)


competition : Decoder Competition
competition =
    Json.Decode.object5 Competition
        ("EventId" := eventIdDecoder)
        ("Name" := nameDecoderTwo)
        ("StartDate" := dateDecoder)
        ("EventRace" := list race)
        (maybe ("WebURL" := urlDecoder))


race : Decoder Race
race =
    decode Race
        |> required "EventId" eventIdDecoder
        |> required "EventRaceId" eventIdDecoder
        |> required "Name" nameDecoderTwo
        |> required "RaceDate" dateDecoder
        |> optional "EventCenterPosition" (insideList (Point "" "") (at [ "$" ] pointDecoder)) (Point "" "")
        |> requiredAt [ "$", "raceLightCondition" ] lightCondition
        |> requiredAt [ "$", "raceDistance" ] distance


startList : Decoder StartList
startList =
    decode Loaded
        |> requiredAt [ "StartList", "Event" ] (insideList "" (at [ "EventId" ] stringInList))
        |> optionalAt [ "StartList", "ClassStart" ] (list classStart) []


classStart : Decoder ClassStart
classStart =
    decode ClassStart
        |> requiredAt [ "$", "numberOfEntries" ] string
        |> required "EventClass" (insideList emptyEventClass eventClass)
        |> required "PersonStart" (list personStart)


eventClass : Decoder EventClass
eventClass =
    decode EventClass
        |> required "ClassShortName" stringInList
        |> required "Name" (insideList "" (at ["_"] string))
        |> required "ClassRaceInfo" (insideList "" (at ["EventRaceId"] stringInList))
        |> requiredAt ["$", "sequence"] string


personStart : Decoder PersonStart
personStart =
    decode PersonStart
        |> required "Person" (insideList emptyPerson person)
        |> optional "Organisation" (insideList emptyOrganisation organisation) emptyOrganisation
        |> optional "Start" (insideList emptyRaceStart raceStart) emptyRaceStart

person : Decoder Person
person =
    decode Person
        |> required "PersonName" (insideList emptyPersonName personName)


personName : Decoder PersonName
personName =
    decode PersonName
        |> required "Family" stringInList
        |> required "Given" (insideList "" (at [ "_" ] string))

organisation : Decoder Organisation
organisation =
    decode Organisation
        |> optional "OrganisationId" stringInList ""
        |> required "ShortName" (insideList "" (at ["_"] string))

raceStart : Decoder RaceStart
raceStart =
    decode RaceStart
        |> optional "BibNumber" stringInList ""
        |> optional "StartTime" (insideList "" (at ["Clock"] stringInList)) ""

stringInList : Decoder String
stringInList =
    insideList "" string


lightCondition : Decoder LightCondition
lightCondition =
    let
        decodeToType : String -> Decoder LightCondition
        decodeToType str =
            case str of
                "Day" ->
                    decode Day

                "Night" ->
                    decode Night

                "DayAndNight" ->
                    decode DayAndNight

                _ ->
                    decode UnknownCondition
    in
        string `andThen` decodeToType


distance : Decoder Distance
distance =
    let
        stringToDistance str =
            case str of
                "Middle" ->
                    decode Middle

                "Long" ->
                    decode Long

                "Sprint" ->
                    decode Sprint

                "UltraLong" ->
                    decode UltraLong

                "PreO" ->
                    decode PreO

                "TempO" ->
                    decode TempO

                _ ->
                    decode UnknownDistance
    in
        string `andThen` stringToDistance



{-
   compTwo =
     decode Competition
       |> required "EventId" eventIdDecoder
       |> required "Name" nameDecoderTwo
       |> required "StartDate" dateDecoder
       |> required "EventRace" (list race)
       |> optional "WebURL" urlDecoder ""
-}


eventIdDecoder : Decoder String
eventIdDecoder =
    (insideList "" string)


nameDecoderTwo : Decoder String
nameDecoderTwo =
    (insideList "" nameDecoder)


dateDecoder : Decoder String
dateDecoder =
    (insideList "" (at [ "Date" ] (insideList "" string)))


urlDecoder : Decoder String
urlDecoder =
    (insideList "" string)


nameDecoder : Decoder String
nameDecoder =
    oneOf
        [ at [ "_" ] string
        , string
        ]


pointDecoder : Decoder Point
pointDecoder =
    decode Point
        |> required "x" string
        |> required "y" string
