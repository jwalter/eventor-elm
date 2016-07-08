module Competition exposing (Competition, Msg, empty, view)

import Html exposing (..)
import Race exposing (Race)

type alias Competition =
  { id: String
  , name : String
  , startDate : String
  , races : List Race
  , webUrl : String
  }

type Msg = None

empty : Competition
empty =
  Competition "" "" "" [] ""
  
view : Maybe Competition -> Html.Html Msg
view competition =
  case competition of
  Just c ->
    table []
      [ caption [] [ text "Allmän information" ]
      , tbody []
        [ tr [] 
          [ td [] [ text "Tävlingens namn" ]
          , td [] [ text c.name ]]
        , tr []
          [ td [] [ text "Datum" ]
          , td [] [ text c.startDate ]]
        ]
      ]
  Nothing ->
    text ""