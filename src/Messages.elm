module Messages exposing (..)

import Time exposing (Time)
import Competitions.Messages


type Msg
    = CompetitionsMsg Competitions.Messages.Msg
    | ShowCompetitions
    | ShowAbout
    | TimeReceived Time
    | TimeFailed String
