module Competitions.List exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import String
import Hop.Types exposing (Location)
import Competitions.Models exposing (..)
import Competitions.Messages exposing (..)


type alias ViewModel =
    { competitions : List Competition
    , location : Location
    }


view : ViewModel -> Html Msg
view model =
    let
        races =
            model.competitions
                |> allRaces
                |> List.sortBy (\c -> c.startDate)
    in
        div []
            [ h2 [] [ text "Tävlingar" ]
            , table []
                [ tbody [] (tableRows races) ]
            ]


allRaces : List Competition -> List Race
allRaces competitions =
    List.foldr (\c all -> (List.append all (List.map (mergeNames c) c.races))) [] competitions


mergeNames : Competition -> Race -> Race
mergeNames competition race =
    let
        name =
            if String.length race.name > 0 then
                competition.name ++ ", " ++ race.name
            else
                competition.name
    in
        { race | name = name }


tableRows : List Race -> List (Html Msg)
tableRows collection =
    List.map rowView collection


rowView : Race -> Html Msg
rowView competition =
    tr []
        [ td [ onClick (Show competition.id) ]
            [ text competition.name
            ]
        ]
