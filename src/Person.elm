module Person exposing (Person, decoder, empty)

import Json.Decode exposing (list, Decoder)
import Json.Decode.Pipeline exposing (decode, required)

import BirthDate exposing (BirthDate)
import PersonName exposing (PersonName)

type alias Person =
  { name: List PersonName
  , birthDate: List BirthDate
  }

empty : Person
empty =
  Person [] []

decoder : Decoder Person
decoder =
  decode Person
    |> required "PersonName" (list PersonName.decoder)
    |> required "BirthDate" (list BirthDate.decoder)
