module Competitions.StartList exposing (..)

import Html exposing (..)
import Html.Attributes exposing (style, src)
import Material
import Material.Button as Button
import Material.Icon as Icon
import Material.Layout as Layout
import Material.Options as Options
import Material.Progress as Progress
import Material.Table as Table
import Competitions.Models exposing (..)
import Competitions.Messages exposing (..)


view : StartList -> String -> Html Msg
view startList raceId =
    case startList of
        Loaded competitionId classStarts ->
            let
                starts =
                    classStarts
                        |> List.filter (\cs -> cs.eventClass.raceId == raceId)
                        |> List.sortBy (\cs -> cs.eventClass.sortOrder)
            in
                Options.div [ Options.css "padding" "10px" ]
                    [ Options.div [] (List.map viewClassStart starts)
                    ]

        Empty ->
            text "Startlista saknas"

        Loading ->
            Options.div [ Options.css "width" "100%"]
                [ Progress.indeterminate
                ]


viewClassStart : ClassStart -> Html Msg
viewClassStart classStart =
    Options.div []
        [ h4 [ style [ ( "margin-bottom", "0px" ) ] ] [ text classStart.eventClass.className ]
        , h6 [ style [ ( "margin-top", "0px" ) ] ] [ text (classStart.numberOfEntries ++ " startande") ]
        , Table.table [ Options.css "width" "100%" ]
            [ Table.thead [ tableStyles ]
                [ Table.th [ tableStyles ] [ text "Nummerlapp" ]
                , Table.th [ tableStyles ] [ text "Namn" ]
                , Table.th [ tableStyles ] []
                , Table.th [ tableStyles ] [ text "Starttid" ]
                ]
            , Table.tbody []
                (classStart.personStarts
                    |> List.sortBy (\ps -> ps.raceStart.startTime)
                    |> List.map personStartRow
                )
            ]
        ]


personStartRow : PersonStart -> Html Msg
personStartRow personStart =
    let
        clubIcon =
            case personStart.organisation.id of
                "" ->
                    text ""

                _ ->
                    img [ (src ("https://eventor.orientering.se/Organisation/Logotype/" ++ personStart.organisation.id ++ "?type=SmallIcon")) ] []
    in
        Table.tr [ tableStyles ]
            [ Table.td [ tableStyles ] [ text (personStart.raceStart.bibNumber) ]
            , Table.td [ tableStyles ] [ text (personStart.person.name.given ++ " " ++ personStart.person.name.family) ]
            , Table.td [ tableStyles ] [ clubIcon ]
            , Table.td [ tableStyles ] [ text (personStart.raceStart.startTime) ]
            ]


tableStyles : Options.Property a b
tableStyles =
    Options.many [ Options.css "padding" "4px", Options.css "height" "20px" ]


headerRow : CompetitionId -> Material.Model -> Html Msg
headerRow competitionId mdl =
    Layout.row [ (Options.css "transition" "background .15s"), Options.css "background-color" "white" ]
        [ backButton (Show competitionId) mdl
        , Layout.title [ Options.css "color" "black" ] [ text "Tillbaka" ]
        ]


backButton : Msg -> Material.Model -> Html Msg
backButton msg mdl =
    Button.render
        MDL
        [ 0 ]
        mdl
        [ Button.icon
        , Options.cs "mdl-layout__drawer-button"
        , Options.css "color" "black"
        , Button.onClick msg
        ]
        [ Icon.i "arrow_back" ]
