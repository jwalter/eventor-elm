module Person exposing (Person, decoder, empty)

import Json.Decode exposing (list, at, string, null, oneOf, map, Decoder, (:=), succeed)
import Json.Decode.Pipeline exposing (decode, required, optional, optionalAt)

import JsonSupport exposing (insideList)
import PersonName exposing (PersonName)

type alias Person =
  { name: PersonName
  , birthDate: String
  , phoneNumber : String
  , mailAddress : String
  }

empty : Person
empty =
  Person PersonName.empty "" "" ""

decoder : Decoder Person
decoder =
  decode Person
    |> required "PersonName" (insideList PersonName.empty PersonName.decoder)
    |> required "BirthDate" (insideList "" (at ["Date"] (insideList "" string)))
    |> required "Tele" (insideList "" (phoneNumberDecoder))
    |> required "Tele" (insideList "" (at ["$", "mailAddress"] string))

phoneNumberDecoder : Decoder String
phoneNumberDecoder =
  "$" := (oneOf ["phoneNumber" := string, succeed ""])
