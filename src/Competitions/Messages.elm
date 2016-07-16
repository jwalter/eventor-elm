module Competitions.Messages exposing (..)

import Http
import Material
import Competitions.Models exposing (..)


type Msg
    = Show String
    | ShowAll
    | ShowStartList CompetitionId RaceId
    | FetchSucceed (List Competition)
    | FetchStartListSucceed StartList
    | FetchFail Http.Error
    | MDL Material.Msg
