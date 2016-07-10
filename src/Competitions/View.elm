module Competitions.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (href, style)
import Hop.Types exposing (Location)
import Competitions.Models exposing (Competition, Route, Route(..))
import Competitions.Messages exposing (..)
import Competitions.List
import Competitions.Show


type alias ViewModel =
    { competitions : List Competition
    , location : Location
    , route : Route
    }


view : ViewModel -> Html Msg
view model =
    div []
        [ subView model
        ]


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


getCompetition : List Competition -> String -> Maybe Competition
getCompetition competitions id =
    competitions
        |> List.filter (\comp -> comp.id == id)
        |> List.head
