module Routing.Utils exposing (..)

import Hop exposing (..)
import Models exposing (..)
import Routing.Config exposing (..)
import Competitions.Routing.Utils


reverse : Route -> String
reverse route =
    case route of
        HomeRoute ->
            matcherToPath matcherHome []

        AboutRoute ->
            matcherToPath matcherAbout []

        CompetitionsRoutes subRoute ->
            let
                parentPath =
                    matcherToPath matchersCompetitions []

                subPath =
                    Competitions.Routing.Utils.reverse subRoute
            in
                parentPath ++ subPath

        NotFoundRoute ->
            ""
