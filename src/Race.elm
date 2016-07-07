module Race exposing (Race, decoder, empty)

import Html exposing (text)
import Json.Decode exposing (string, int, list, at, map, Decoder, decodeString, oneOf)
import Json.Decode.Pipeline exposing (decode, required, custom, optional)

import JsonSupport exposing (insideList)

type alias Race =
  { name : String
  , startDate : String
  , position : Point
  }

type alias Point =
  { x : String
  , y : String
  }

empty : Race
empty =
  Race "" "" (Point "" "")

decoder : Decoder Race
decoder =
  decode Race
    |> required "Name" (insideList "" (nameDecoder))
    |> required "RaceDate" (insideList "" (at ["Date"] (insideList "" string)))
    |> optional "EventCenterPosition" (insideList (Point "" "") (at ["$"] pointDecoder)) (Point "" "")

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

main : Html.Html a
main =
  let
    race = raceFromJson
  in
    case race of
      Ok value ->
        text (toString value)
      Err msg ->
       text ("Error: " ++ msg)

raceFromJson : Result String Race
raceFromJson =
  decodeString
      decoder
        """
        {
          "$": {
            "raceLightCondition": "Day",
            "raceDistance": "Long"
          },
          "EventRaceId": [
            "12918"
          ],
          "EventId": [
            "12215"
          ],
          "Name": [
            {
              "_": "Etapp 1, lång",
              "$": {
                  "languageId": "sv"
              }
            }
          ],
          "RaceDate": [
            {
              "Date": [
                "2016-07-04"
              ],
              "Clock": [
                "00:00:00"
              ]
            }
          ],
          "EventCenterPosition": [
            {
              "$": {
                "y": "59.28825",
                "x": "18.16078"
              }
            }
          ]
        }
        """