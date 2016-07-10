module Organisation exposing (Organisation, decoder, empty)

import Json.Decode exposing (string, list, at, Decoder)
import Json.Decode.Pipeline exposing (decode, required)
import OrgName


type alias Organisation =
    { id : List String
    , orgName : List OrgName.OrgName
    }


empty : Organisation
empty =
    Organisation [ "" ] [ OrgName.empty ]


decoder : Decoder Organisation
decoder =
    (at [ "Organisation" ]
        (decode Organisation
            |> required "OrganisationId" (list string)
            |> required "Name" (list OrgName.decoder)
        )
    )
