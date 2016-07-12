module Competitions.List exposing (..)

import Date exposing (Month)
import Html exposing (..)
import Html.Attributes exposing (class, href)
import Html.Events exposing (onClick)
import String
import Hop.Types exposing (Location)
import Competitions.Models exposing (..)
import Competitions.Messages exposing (..)


type alias ViewModel =
    { competitions : List Competition
    , location : Location
    }


type alias TableRow =
    { race : Race
    , header : Maybe String
    }


view : ViewModel -> Html Msg
view model =
    let
        rows =
            model.competitions
                |> allRaces
                |> sortedByStartDate
                |> withHeaderInfo
                |> asRaceTableRows
    in
        table [] [ tbody [] rows ]


sortedByStartDate : List Race -> List Race
sortedByStartDate unsorted =
    unsorted
        |> List.sortBy (\i -> i.startDate)


withHeaderInfo : List Race -> List TableRow
withHeaderInfo races =
    let
        races =
            List.reverse races

        toHeader race rows =
            if (startDate (List.head rows)) == race.startDate then
                TableRow race Maybe.Nothing
            else
                TableRow race (Just race.startDate)
    in
        List.reverse (List.foldr (\r l -> (toHeader r l) :: l) [] races)


startDate : Maybe TableRow -> String
startDate maybeRow =
    case maybeRow of
        Nothing ->
            ""

        Just s ->
            s.race.startDate


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
        { race | name = name }


asRaceTableRows : List TableRow -> List (Html Msg)
asRaceTableRows collection =
    List.concatMap asTableRow collection


asTableRow : TableRow -> List (Html Msg)
asTableRow row =
    let
        raceRow =
            tr []
                [ td [] []
                , td []
                    [ a [ href "javascript://", onClick (Show row.race.id) ] [ text row.race.name ]
                    ]
                ]

        headerRow =
            tr []
                [ td [ class "h6" ] [ text (shortDate row.header) ]
                , td [] []
                ]
    in
        case row.header of
            Nothing ->
                [ raceRow ]

            Just header ->
                [ headerRow, raceRow ]


shortDate : Maybe String -> String
shortDate maybeString =
    case maybeString of
        Nothing ->
            ""

        Just dateString ->
            let
                parseResult =
                    Date.fromString dateString
            in
                case parseResult of
                    Ok value ->
                        (toString (Date.day value)) ++ "/" ++ (toString (monthNumber (Date.month value)))

                    Err msg ->
                        (Debug.log msg "")


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
