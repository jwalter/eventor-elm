module EventorDecode exposing (competition)

import Json.Decode exposing (string, int, list, at, map, Decoder, decodeString)
import Json.Decode.Pipeline exposing (decode, required, optional)

import JsonSupport exposing (insideList)
import Race exposing (Race, decoder)
import Competition exposing (Competition)

competition : Decoder Competition
competition =
  decode Competition
    |> required "EventId" (insideList "" string)
    |> required "Name" (insideList "" (at ["_"] string))
    |> required "StartDate" (insideList "" (at ["Date"] (insideList "" string)))
    |> required "EventRace" (list Race.decoder)
    |> optional "WebURL" (insideList "" string) ""
