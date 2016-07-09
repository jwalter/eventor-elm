module Eventor.Decode exposing (competition, race)

import Json.Decode exposing (string, int, list, at, map, oneOf, maybe, Decoder, decodeString, (:=))
import Json.Decode.Pipeline exposing (decode, required, optional, hardcoded)

import Eventor.JsonSupport exposing (insideList)
import Competitions.Models exposing (Competition, Race, Point)

race : Decoder Race
race =
  decode Race
    |> required "EventId" eventIdDecoder
    |> required "Name" nameDecoderTwo
    |> required "RaceDate" dateDecoder
    |> optional "EventCenterPosition" (insideList (Point "" "") (at ["$"] pointDecoder)) (Point "" "")

competition : Decoder Competition
competition =
  Json.Decode.object5 Competition
    ("EventId" := eventIdDecoder)
    ("Name" := nameDecoderTwo)
    ("StartDate" := dateDecoder)
    ("EventRace" := list race)
    (maybe ("WebURL" := urlDecoder))
{-
compTwo =
  decode Competition
    |> required "EventId" eventIdDecoder 
    |> required "Name" nameDecoderTwo
    |> required "StartDate" dateDecoder
    |> required "EventRace" (list race)
    |> optional "WebURL" urlDecoder ""
-}

eventIdDecoder : Decoder String
eventIdDecoder =
  (insideList "" string)

nameDecoderTwo : Decoder String
nameDecoderTwo =
  (insideList "" nameDecoder)

dateDecoder : Decoder String
dateDecoder =
  (insideList "" (at ["Date"] (insideList "" string)))

urlDecoder : Decoder String
urlDecoder =
  (insideList "" string)

nameDecoder : Decoder String
nameDecoder =
  oneOf
  [ at ["_"] string
    , string
  ]

pointDecoder : Decoder Point
pointDecoder =
  decode Point
    |> required "x" string
    |> required "y" string
