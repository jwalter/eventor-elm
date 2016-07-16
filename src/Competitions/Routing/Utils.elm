module Competitions.Routing.Utils exposing (reverse, reverseWithPrefix)

import Hop exposing (..)
import Hop.Types exposing (Config)
import Models
import Competitions.Models exposing (..)
import Routing.Config
import Competitions.Routing.Config exposing (..)


config : Config Models.Route
config =
    Routing.Config.config


reverseWithPrefix : Route -> String
reverseWithPrefix route =
    "" ++ (reverse route)


reverse : Route -> String
reverse route =
    case route of
        CompetitionsRoute ->
            matcherToPath matcherCompetitions []

        CompetitionRoute id ->
            matcherToPath matcherCompetition [ id ]
        StartListRoute competitionId raceId ->
            matcherToPath matcherStartList [ competitionId, raceId ]
        NotFoundRoute ->
            ""
