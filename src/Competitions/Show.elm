module Competitions.Show exposing (..)

import Html exposing (..)
import Html.Attributes exposing (id, href, style, src)
import Competitions.Models exposing (..)
import Competitions.Messages exposing (..)


styles : Html.Attribute a
styles =
    style
        [ ( "float", "left" )
        ]


view : Competition -> Html Msg
view competition =
    div [ styles ]
        [ h2 [ id "titleCompetition" ] [ text competition.name ]
        , div [] [ text competition.startDate ]
        ]
