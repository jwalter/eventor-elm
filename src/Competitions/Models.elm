module Competitions.Models exposing (..)

import Time exposing (Time)
import Material


type alias RaceId =
    String


type alias CompetitionId =
    String


type alias Model =
    { competitions : List Competition
    , mdl : Material.Model
    }


type alias Competition =
    { id : String
    , name : String
    , startDate : String
    , races : List Race
    , webUrl : Maybe String
    }


type alias Race =
    { id : String
    , raceId : String
    , name : String
    , startDate : String
    , position : Point
    , lightCondition : LightCondition
    , distance : Distance
    }


type StartList
    = Loading
    | Empty
    | Loaded String (List ClassStart)



{- }
   type alias StartList =
       { competitionId : String
       , classStarts : List ClassStart
       , loading : Bool
       }
-}


type alias ClassStart =
    { numberOfEntries : String
    , eventClass : EventClass
    , personStarts : List PersonStart
    }


type alias EventClass =
    { classShortName : String
    , className : String
    , raceId : String
    , sortOrder : String
    }


emptyEventClass : EventClass
emptyEventClass =
    EventClass "" "" "" ""


type alias PersonStart =
    { person : Person
    , organisation : Organisation
    , raceStart : RaceStart
    }


type alias Organisation =
    { id : String
    , name : String
    }


emptyOrganisation : Organisation
emptyOrganisation =
    Organisation "" ""


type alias Person =
    { name : PersonName
    }


emptyPerson : Person
emptyPerson =
    Person emptyPersonName


type alias PersonName =
    { family : String
    , given : String
    }


emptyPersonName : PersonName
emptyPersonName =
    PersonName "" ""


type alias RaceStart =
    { bibNumber : String
    , startTime : String
    }


emptyRaceStart : RaceStart
emptyRaceStart =
    RaceStart "" ""


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


newModel : Model
newModel =
    { competitions = []
    , mdl = Material.model
    }


newCompetition : Competition
newCompetition =
    { id = ""
    , name = ""
    , startDate = ""
    , races = []
    , webUrl = Just ""
    }


emptyStartList : StartList
emptyStartList =
    Empty


loadingStartList : StartList
loadingStartList =
    Loading


loadedStartList : String -> List ClassStart -> StartList
loadedStartList competitionId classStarts =
    Loaded competitionId classStarts



-- ROUTING


type Route
    = CompetitionsRoute
    | CompetitionRoute String
    | StartListRoute CompetitionId RaceId
    | NotFoundRoute
