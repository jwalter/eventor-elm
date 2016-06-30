import Html exposing (..)
import Html.App as Html
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Http
import Json.Decode as Json
import Task



main =
  Html.program
    { init = init "cats"
    , view = view
    , update = update
    , subscriptions = subscriptions
    }



-- MODEL


type alias Model =
  { topic : String
  , gifUrl : String
  , foo: String
  }


init : String -> (Model, Cmd Msg)
init topic =
  ( Model topic "waiting.gif" "string"
  , getRandomGif topic
  )



-- UPDATE


type Msg
  = MorePlease
  | FetchSucceed String
  | FetchFail Http.Error


update : Msg -> Model -> (Model, Cmd Msg)
update msg model =
  case msg of
    MorePlease ->
      (model, getRandomGif model.topic)

    FetchSucceed newUrl ->
      (Model model.topic newUrl "{'PersonList': 12 }", Cmd.none)

    FetchFail _ ->
      (model, Cmd.none)



-- VIEW


view : Model -> Html Msg
view model =
  div []
    [ h2 [] [text model.topic]
    , button [ onClick MorePlease ] [ text "More Please!" ]
    , br [] []
    , div [] [ text model.gifUrl]
    ]



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
  Sub.none



-- HTTP


getRandomGif : String -> Cmd Msg
getRandomGif topic =
  let
    url =
      "https://eventor-proxy-jwalter.c9users.io:8080/api/organisation/512"
  in
    Task.perform FetchFail FetchSucceed getOks

getOrganisation : String -> Task.Task Http.RawError Http.Response
getOrganisation id =
  Http.send Http.defaultSettings 
  { verb = "GET"
  , headers = [("apikey", "cb39d7ba1e6f436cafacd2f5d26ecd12")]
  , url = "https://eventor-proxy-jwalter.c9users.io:8080/api/organisation/512"
  , body = Http.empty
  }
  
getOks : Task.Task Http.Error String
getOks =
  Http.fromJson decodeGifUrl (getOrganisation "512")
  
decodeGifUrl : Json.Decoder String
decodeGifUrl =
  Json.at ["Organisation", "Name", "$t"] Json.string

