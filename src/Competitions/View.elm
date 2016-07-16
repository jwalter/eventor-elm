module Competitions.View exposing (..)

import Html exposing (..)
import Hop.Types exposing (Location)
import Material
import Material.Layout as Layout
import Material.Options as Options
import Competitions.Models exposing (Competition, StartList, Route, Route(..))
import Competitions.Messages exposing (..)
import Competitions.List
import Competitions.Show
import Competitions.StartList


type alias ViewModel =
    { competitions : List Competition
    , startList : StartList
    , location : Location
    , route : Route
    , mdl : Material.Model
    }


model : List Competition -> StartList -> Location -> Route -> Material.Model -> ViewModel
model competitions startList location route mdl =
    { competitions = competitions
    , startList = startList
    , location = location
    , route = route
    , mdl = mdl
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
                        Competitions.Show.view (Competitions.Show.viewModel competition)

                    Nothing ->
                        notFoundView model

        CompetitionsRoute ->
            Competitions.List.view (Competitions.List.viewModel model.competitions model.location)

        StartListRoute competitionId raceId ->
            Competitions.StartList.view model.startList model.mdl raceId

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
            Competitions.Show.headerRow model.mdl (getCompetition model.competitions id)

        StartListRoute competitionId raceId ->
            Competitions.StartList.headerRow competitionId model.mdl

        _ ->
            Layout.row [ (Options.css "transition" "background .15s") ]
                [ Layout.title [] [ text "Eventor" ] ]


getCompetition : List Competition -> String -> Maybe Competition
getCompetition competitions id =
    competitions
        |> List.filter (\comp -> comp.id == id)
        |> List.head
