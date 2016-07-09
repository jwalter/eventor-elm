module Messages exposing (..)

import Competitions.Messages


type Msg
    = CompetitionsMsg Competitions.Messages.Msg
    | ShowHome
    | ShowCompetitions
    | ShowAbout
