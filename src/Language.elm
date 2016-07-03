module Language exposing (Language, decoder, empty)

import Json.Decode exposing (string, Decoder)
import Json.Decode.Pipeline exposing (decode, required)

type alias Language =
  { name : String }

empty : Language
empty = 
  Language ""

decoder: Decoder Language
decoder =
  decode Language
    |> required "languageId" string
