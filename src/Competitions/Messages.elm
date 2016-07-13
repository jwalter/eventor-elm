module Competitions.Messages exposing (..)

import Http
import Material
import Competitions.Models exposing (..)


type Msg
    = Show String
    | ShowAll
    | FetchSucceed (List Competition)
    | FetchFail Http.Error
    | MDL Material.Msg
