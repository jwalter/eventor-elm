module OrgName exposing (OrgName, decoder)

import Json.Decode exposing (string, Decoder)
import Json.Decode.Pipeline exposing (decode, required)

import Language

type alias OrgName =
  { name : String
  , lang : Language.Language
  }

decoder: Decoder OrgName
decoder =
  decode OrgName
    |> required "_" string
    |> required "$" Language.decoder
