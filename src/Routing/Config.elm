module Routing.Config exposing (..)

import Hop.Types exposing (Config, Location, Query, Router, PathMatcher, newLocation)
import Hop.Matchers exposing (..)
import Models exposing (..)
import Competitions.Routing.Config


matcherHome : PathMatcher Route
matcherHome =
    match1 HomeRoute ""


matcherAbout : PathMatcher Route
matcherAbout =
    match1 AboutRoute "/about"


matchersCompetitions : PathMatcher Route
matchersCompetitions =
    nested1 CompetitionsRoutes "/competitions" Competitions.Routing.Config.matchers


matchers : List (PathMatcher Route)
matchers =
    [ matcherHome
    , matcherAbout
    , matchersCompetitions
    ]


config : Config Route
config =
    { basePath = "/app"
    , hash = True
    , matchers = matchers
    , notFound = NotFoundRoute
    }
