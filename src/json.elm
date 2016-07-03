import Json.Decode exposing (int, string, float, list, Decoder, at, decodeString)
import Json.Decode.Pipeline exposing (decode, required, optional, hardcoded, custom)
import Html exposing (text)

  
main : Html.Html a
main =
  let
    user = decodedUser
  in
    case user of
      Ok value ->
        text (List.foldr (\x s -> x ++ s) "" (List.map (\x -> x.name) value.orgName))
      Err msg ->
       text ("Error: " ++ msg)

-- MODEL
type alias Organisation =
  { id : List String
  , orgName : List OrgName
  }

type alias OrgName =
  { name : String
  , lang : Language
  }

type alias Language =
  { name : String }


decodedUser : Result String Organisation
decodedUser =
  decodeString
      (at ["Organisation"] userDecoder)
        """
          {
            "Organisation": {
              "OrganisationId": ["123"],
              "Name": [
                {
                  "_": "OKS",
                  "$": { "languageId" : "sv" }
                }
              ],
              "ShortName": [
                {
                  "_": "OK Skogsströvarna",
                  "$": {
                    "languageId": "sv"
                  }
                }
              ]
            }
          }
        """

userDecoder : Decoder Organisation
userDecoder =
  decode Organisation
    |> required "OrganisationId" (list string)
    |> required "Name" (list orgNameDecoder)

orgNameDecoder: Decoder OrgName
orgNameDecoder =
  decode OrgName
    |> required "_" string
    |> required "$" langDecoder

langDecoder: Decoder Language
langDecoder =
  decode Language
    |> required "languageId" string