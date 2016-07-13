module Competitions.Show exposing (..)

import Html exposing (..)
import Html.Attributes exposing (id, href, style, src, class)
import Html.Events exposing (onClick)
import Competitions.Models exposing (..)
import Competitions.Messages exposing (..)


buttonStyles : Html.Attribute a
buttonStyles =
    style
        [ ( "margin", "10px" ) ]


view : Competition -> Html Msg
view competition =
    div []
        [ h4 [] [ text competition.name ]
        , div [ class "mb2 h5" ] [ text competition.startDate ]
        , viewRaces competition.races
        , button [ onClick ShowAll, buttonStyles, class "mdl-button mdl-button--raised" ] [ text "Tillbaka" ]
        ]


viewRaces : List Race -> Html Msg
viewRaces races =
    div [] (List.map viewRace races)


viewRace : Race -> Html Msg
viewRace race =
    div []
        [ h6 [] [ text race.name ]
        , table []
            [ tbody []
                [ toRow "Datum" race.startDate
                , toRow "Tävlingstidpunkt" (conditionToString race.lightCondition)
                , toRow "Tävlingsdistans" (distanceToString race.distance)
                ]
            ]
        , hr [] []
        ]


conditionToString : LightCondition -> String
conditionToString condition =
    case condition of
        Day ->
            "Dag"

        Night ->
            "Natt"

        DayAndNight ->
            "Dag och natt"

        UnknownCondition ->
            "Okänt"


distanceToString : Distance -> String
distanceToString distance =
    case distance of
        Long ->
            "Lång"

        Middle ->
            "Medel"

        Sprint ->
            "Sprint"

        UltraLong ->
            "Ultralång"

        PreO ->
            "Pre-O"

        TempO ->
            "Temp-O"

        UnknownDistance ->
            "Okänd"


toRow : String -> String -> Html Msg
toRow name value =
    tr []
        [ td [ style [ ( "padding-right", "20px" ) ] ] [ text name ]
        , td [] [ text value ]
        ]
