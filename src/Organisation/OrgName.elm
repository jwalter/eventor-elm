module OrgName exposing (OrgName, decoder, empty)

import Json.Decode exposing (string, Decoder)
import Json.Decode.Pipeline exposing (decode, required)
import Language


type alias OrgName =
    { name : String
    , lang : Language.Language
    }


empty : OrgName
empty =
    OrgName "" Language.empty


decoder : Decoder OrgName
decoder =
    decode OrgName
        |> required "_" string
        |> required "$" Language.decoder
