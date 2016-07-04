module PersonName exposing (PersonName, decoder, empty)

import Html exposing (text)
import Json.Decode exposing (string, int, list, at, map, Decoder, decodeString)
import Json.Decode.Pipeline exposing (decode, required, custom)

import JsonSupport exposing (insideList)

type alias PersonName =
  { family : String
  , given : String
  }

empty : PersonName
empty =
  PersonName "" ""

decoder : Decoder PersonName
decoder =
  decode PersonName
    |> required "Family" (insideList "" string)
    |> required "Given" (insideList "" (at ["_"] string))

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

decodedName : Result String PersonName
decodedName =
  decodeString
      decoder
        """
          {
            "Family": [
              "Pettersson"
            ],
            "Given": [
              {
                "_": "Henrik",
                "$": {
                  "sequence": "1"
                }
              }
            ]
          }
        """
