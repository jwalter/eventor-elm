module Messages exposing (..)

import Material
import Competitions.Messages


type Msg
    = CompetitionsMsg Competitions.Messages.Msg
    | ShowCompetitions
    | ShowAbout
    | MDL Material.Msg
