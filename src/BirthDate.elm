module BirthDate exposing (BirthDate, decoder, empty)

import Html exposing (..)
import Json.Decode exposing (string, int, list, at, Decoder, decodeString)
import Json.Decode.Pipeline exposing (decode, required, custom)

type alias BirthDate =
  { date : List String
  }

empty : BirthDate
empty =
  BirthDate []

decoder : Decoder BirthDate
decoder =
  decode BirthDate
    |> required "Date" (list string)

main : Html.Html a
main =
  let
    date = decodeString decoder example
  in
    case date of
      Ok value ->
        view "BirthDate" value
      Err msg ->
       text ("Error: " ++ msg)

view : String -> a -> Html.Html b
view name json =
  div []
    [ h2 [] [text name]
    , div [] [text (toString json)]
    ]

example : String
example =
  """
    {
      "Date": [
        "1967-08-25"
      ]
    }
  """