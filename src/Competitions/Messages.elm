module Competitions.Messages exposing (..)

import Http

import Competitions.Models exposing (..)


type Msg
    = Show String
    | ShowAll
    | FetchSucceed (List Competition)
    | FetchFail Http.Error
