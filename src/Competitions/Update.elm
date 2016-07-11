module Competitions.Update exposing (..)

import Debug
import Navigation
import Hop exposing (makeUrl, makeUrlFromLocation, addQuery, setQuery)
import Hop.Types exposing (Config, Location)
import Routing.Config
import Models
import Competitions.Load exposing (..)
import Competitions.Mock exposing (..)
import Competitions.Models exposing (..)
import Competitions.Messages exposing (Msg(..))
import Competitions.Routing.Utils


type alias UpdateModel =
    { competitions : List Competition
    , location : Location
    }


init : ( List Competition, Cmd Msg )
init =
    ( [ { newCompetition | name = "-Laddar-", id = "1" } ], loadEventorCompetitions )


initMock : ( List Competition, Cmd Msg )
initMock =
    ( Competitions.Mock.competitions, Cmd.none )


routerConfig : Config Models.Route
routerConfig =
    Routing.Config.config


navigationCmd : String -> Cmd a
navigationCmd path =
    Navigation.modifyUrl (makeUrl Routing.Config.config path)


update : Msg -> UpdateModel -> ( UpdateModel, Cmd Msg )
update message model =
    case Debug.log "message" message of
        Show id ->
            let
                path =
                    Competitions.Routing.Utils.reverseWithPrefix (Competitions.Models.CompetitionRoute id)
            in
                ( model, navigationCmd path )

        ShowAll ->
            let
                path =
                    Competitions.Routing.Utils.reverseWithPrefix (Competitions.Models.CompetitionsRoute)
            in
                ( model, navigationCmd path )

        FetchSucceed competitions ->
            ( UpdateModel competitions model.location, Cmd.none )

        FetchFail x ->
            ( (Debug.log (httpErrorMessage x) model), Cmd.none )
