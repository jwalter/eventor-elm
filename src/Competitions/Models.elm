module Competitions.Models exposing (..)

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
    }


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
