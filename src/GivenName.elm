module GivenName exposing (GivenName, decoder, empty)

import Html exposing (text)
import Json.Decode exposing (string, int, at, Decoder, decodeString)
import Json.Decode.Pipeline exposing (decode, required, custom)

type alias GivenName =
  { value : String
  , sequence : String
  }

empty : GivenName
empty =
  GivenName "" ""

decoder : Decoder GivenName
decoder =
  decode GivenName
    |> required "_" string
    |> custom (at ["$", "sequence"] string)

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

decodedName : Result String GivenName
decodedName =
  decodeString
      decoder
        """
            {
                "_": "Henrik",
                "$": {
                  "sequence": "1"
                }
              } 
        """
