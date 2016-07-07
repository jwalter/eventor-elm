module Competition exposing (Competition, decoder, empty)

import Html exposing (text)
import Json.Decode exposing (string, int, list, at, map, Decoder, decodeString)
import Json.Decode.Pipeline exposing (decode, required, custom)

import JsonSupport exposing (insideList)
import Race exposing (Race, decoder)

type alias Competition =
  { name : String
  , startDate : String
  , races : List Race
  }

empty : Competition
empty =
  Competition "" "" []

decoder : Decoder Competition
decoder =
  decode Competition
    |> required "Name" (insideList "" (at ["_"] string))
    |> required "StartDate" (insideList "" (at ["Date"] (insideList "" string)))
    |> required "EventRace" (list Race.decoder)

main : Html.Html a
main =
  let
    name = decodedName
  in
    case name of
      Ok value ->
        text (toString value)
      Err msg ->
       text ("Error: " ++ msg)

decodedName : Result String Competition
decodedName =
  decodeString
      decoder
        """
        {
          "$": {
            "eventForm": "IndSingleDay"
          },
          "EventId": [ "10936" ],
          "Name": [{
            "_": "SOK Nordiska, medeldistans",
            "$": { "languageId": "sv" }
          }],
          "StartDate": [{
            "Date": ["2016-07-02"],
            "Clock": ["00:00:00"]
          }],
          "EventRace": [
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
            ]
        }
        """