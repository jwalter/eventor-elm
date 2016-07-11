module Models exposing (..)

import Hop.Types exposing (Location, newLocation)
import Competitions.Models exposing (Competition)


type Route
    = AboutRoute
    | CompetitionsRoutes Competitions.Models.Route
    | NotFoundRoute


type alias AppModel =
    { competitions : List Competition
    , location : Location
    , route : Route
    , selectedCompetition : Maybe Competition
    }


newAppModel : Route -> Hop.Types.Location -> AppModel
newAppModel route location =
    { competitions = []
    , location = location
    , route = route
    , selectedCompetition = Maybe.Nothing
    }
