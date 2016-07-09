module Race exposing (main)

import Html exposing (text)
import Json.Decode exposing (decodeString)

import Competitions.Models exposing (Race)
import Eventor.Decode exposing (race)

main : Html.Html Never
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
      race
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