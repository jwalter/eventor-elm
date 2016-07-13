module Competitions.View exposing (..)

import Html exposing (..)
import Hop.Types exposing (Location)
import Material.Button as Button
import Material
import Material.Icon as Icon
import Material.Layout as Layout
import Material.Options as Options
import Competitions.Models exposing (Competition, Route, Route(..))
import Competitions.Messages exposing (..)
import Competitions.List
import Competitions.Show


type alias ViewModel =
    { competitions : List Competition
    , location : Location
    , route : Route
    , mdl : Material.Model
    }


model : List Competition -> Location -> Route -> ViewModel
model competitions location route =
    { competitions = competitions
    , location = location
    , route = route
    , mdl = Material.model
    }


view : ViewModel -> Html Msg
view model =
    subView model


subView : ViewModel -> Html Msg
subView model =
    case model.route of
        CompetitionRoute competitionId ->
            let
                maybeCompetition =
                    getCompetition model.competitions competitionId
            in
                case maybeCompetition of
                    Just competition ->
                        Competitions.Show.view competition

                    Nothing ->
                        notFoundView model

        CompetitionsRoute ->
            Competitions.List.view { competitions = model.competitions, location = model.location }

        NotFoundRoute ->
            notFoundView model


emptyView : Html msg
emptyView =
    span [] []


notFoundView : ViewModel -> Html msg
notFoundView model =
    div []
        [ text "Not Found"
        ]


headerRow : ViewModel -> Html Msg
headerRow model =
    case model.route of
        CompetitionRoute id ->
            Layout.row [ (Options.css "transition" "background .15s"), Options.css "background-color" "white" ]
                [ backButton model
                , Layout.title [ Options.css "color" "black" ] [ text ("Eventor") ]
                ]

        _ ->
            Layout.row [ (Options.css "transition" "background .15s") ]
                [ Layout.title [] [ text "Eventor" ] ]


backButton : ViewModel -> Html Msg
backButton model =
    Button.render
        MDL
        [ 0 ]
        model.mdl
        [ Button.icon
        , Options.cs "mdl-layout__drawer-button"
        , Options.css "color" "black"
        , Button.onClick ShowAll
        ]
        [ Icon.i "arrow_back" ]


getCompetition : List Competition -> String -> Maybe Competition
getCompetition competitions id =
    competitions
        |> List.filter (\comp -> comp.id == id)
        |> List.head
