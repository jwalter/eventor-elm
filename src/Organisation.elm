module Organisation exposing (Organisation, decoder)

import Json.Decode exposing (string, list, at, Decoder)
import Json.Decode.Pipeline exposing (decode, required)

import OrgName

type alias Organisation =
  { id : List String
  , orgName : List OrgName.OrgName
  }

decoder : Decoder Organisation
decoder =
  (at ["Organisation"]
    (decode Organisation
      |> required "OrganisationId" (list string)
      |> required "Name" (list OrgName.decoder))
  )
