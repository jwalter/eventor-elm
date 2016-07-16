module Competitions.Show exposing (..)

import Html exposing (..)
import Html.Attributes exposing (id, href, style, src, class)
import String
import Material
import Material.Button as Button
import Material.Icon as Icon
import Material.Layout as Layout
import Material.Options as Options
import Competitions.Models exposing (..)
import Competitions.Messages exposing (..)


type alias ViewModel =
    { competition : Competition
    , mdl : Material.Model
    }


viewModel : Competition -> ViewModel
viewModel competition =
    { competition = competition
    , mdl = Material.model
    }


view : ViewModel -> Html Msg
view model =
    Options.div [ Options.css "padding" "10px" ]
        [ h4 [] [ text model.competition.name ]
        , div [ class "mb2 h5" ] [ text model.competition.startDate ]
        , viewRaces model
        ]


headerRow : Material.Model -> Maybe Competition -> Html Msg
headerRow mdl maybeCompetition =
    Layout.row [ (Options.css "transition" "background .15s"), Options.css "background-color" "white" ]
        [ backButton mdl
        , Layout.title [ Options.css "color" "black" ] [ text "Tillbaka" ]
        ]


backButton : Material.Model -> Html Msg
backButton mdl =
    Button.render
        MDL
        [ 0 ]
        mdl
        [ Button.icon
        , Options.cs "mdl-layout__drawer-button"
        , Options.css "color" "black"
        , Button.onClick ShowAll
        ]
        [ Icon.i "arrow_back" ]


viewRaces : ViewModel -> Html Msg
viewRaces model =
    div [] (List.map (viewRace model) model.competition.races)


viewRace : ViewModel -> Race -> Html Msg
viewRace model race =
    div []
        [ h6 [] [ text race.name ]
        , table []
            [ tbody []
                [ toRow "Datum" race.startDate
                , toRow "Tävlingstidpunkt" (conditionToString race.lightCondition)
                , toRow "Tävlingsdistans" (distanceToString race.distance)
                ]
            ]
        , Button.render MDL [ 0 ] model.mdl [ Button.raised, Button.ripple, Button.onClick (ShowStartList race.id race.raceId) ] [ text "Startlista" ]
        , hr [] []
        ]


toInt : String -> Int
toInt str =
    Result.withDefault 0 (String.toInt str)


item : Msg -> String -> Html Msg
item msg txt =
    text txt


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
