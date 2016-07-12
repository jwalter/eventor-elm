module Models exposing (..)

import Hop.Types exposing (Location, newLocation)
import Material
import Competitions.Models exposing (Competition)


type Route
    = AboutRoute
    | CompetitionsRoutes Competitions.Models.Route
    | NotFoundRoute


type alias AppModel =
    { competitions : List Competition
    , location : Location
    , route : Route
    , mdl : Material.Model
    , selectedCompetition : Maybe Competition
    }


newAppModel : Route -> Hop.Types.Location -> AppModel
newAppModel route location =
    { competitions = []
    , location = location
    , route = route
    , mdl = Material.model
    , selectedCompetition = Maybe.Nothing
    }
