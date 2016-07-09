module Competitions.List exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Html.Attributes exposing (class, href, style)
import Hop.Types exposing (Location)
import Competitions.Models exposing (..)
import Competitions.Messages exposing (..)


type alias ViewModel =
    { competitions : List Competition
    , location : Location
    }


styles : Html.Attribute a
styles =
    style
        [ ( "float", "left" )
        , ( "margin-right", "2rem" )
        ]


view : ViewModel -> Html Msg
view model =
    div [ styles ]
        [ h2 [] [ text "Tävlingar" ]
        , table []
            [ tbody [] (tableRows model.competitions) ]
        ]


tableRows : List Competition -> List (Html Msg)
tableRows collection =
    List.map rowView collection


rowView : Competition -> Html Msg
rowView competition =
    tr []
        [ td [ onClick (Show competition.id) ]
            [ text competition.name
            ]
        ]
