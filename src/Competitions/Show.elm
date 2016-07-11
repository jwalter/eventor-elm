module Competitions.Show exposing (..)

import Html exposing (..)
import Html.Attributes exposing (id, href, style, src, class)
import Html.Events exposing (onClick)
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
        , div [ class "mb2" ] [ text competition.startDate ]
        , button [ onClick ShowAll, class "btn not-rounded white bg-blue" ] [ text "Tillbaka" ]
        ]
