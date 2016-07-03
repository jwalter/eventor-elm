module PersonList exposing (PersonList, decoder, empty)

import Json.Decode exposing (list, Decoder)
import Json.Decode.Pipeline exposing (decode, required)

import Person exposing (Person)

type alias PersonList =
  {
    persons : List Person
  }

empty : PersonList
empty =
  PersonList []

decoder : Decoder PersonList
decoder =
  decode PersonList
    |> required "Person" (list Person.decoder)
