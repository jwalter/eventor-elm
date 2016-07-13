module Competitions.Models exposing (Competition, CompetitionsFilter, Race, LightCondition(..), Distance(..), Point, newCompetition, Route(..))

import Time exposing (Time)


type alias Competition =
    { id : String
    , name : String
    , startDate : String
    , races : List Race
    , webUrl : Maybe String
    }


type alias Race =
    { id : String
    , name : String
    , startDate : String
    , position : Point
    , lightCondition : LightCondition
    , distance : Distance
    }


type LightCondition
    = Day
    | Night
    | DayAndNight
    | UnknownCondition


type Distance
    = Middle
    | Long
    | Sprint
    | UltraLong
    | PreO
    | TempO
    | UnknownDistance


type alias Point =
    { x : String
    , y : String
    }


type alias CompetitionsFilter =
    { from : Time
    , to : Time
    }


newCompetition : Competition
newCompetition =
    { id = ""
    , name = ""
    , startDate = ""
    , races = []
    , webUrl = Just ""
    }



-- ROUTING


type Route
    = CompetitionsRoute
    | CompetitionRoute String
    | NotFoundRoute
