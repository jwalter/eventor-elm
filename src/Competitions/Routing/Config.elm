module Competitions.Routing.Config exposing (..)

import Hop.Types exposing (Config, Location, Query, Router, PathMatcher, newLocation)
import Hop.Matchers exposing (..)
import Competitions.Models exposing (..)


matcherCompetitions : PathMatcher Route
matcherCompetitions =
    match1 CompetitionsRoute ""


matcherCompetition : PathMatcher Route
matcherCompetition =
    match2 CompetitionRoute "/" str


matchers : List (PathMatcher Route)
matchers =
    [ matcherCompetitions, matcherCompetition ]
