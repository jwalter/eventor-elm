module Language exposing (Language, decoder)

import Json.Decode exposing (string, Decoder)
import Json.Decode.Pipeline exposing (decode, required)

type alias Language =
  { name : String }

decoder: Decoder Language
decoder =
  decode Language
    |> required "languageId" string
