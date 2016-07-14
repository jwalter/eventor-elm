module Competitions.Update exposing (..)

import Debug
import Navigation
import Time exposing (Time)
import Hop exposing (makeUrl, makeUrlFromLocation, addQuery, setQuery)
import Hop.Types exposing (Config, Location)
import Material
import Routing.Config
import Models
import Competitions.Load exposing (..)
import Competitions.Mock exposing (..)
import Competitions.Models exposing (..)
import Competitions.Messages exposing (Msg(..))
import Competitions.Routing.Utils
import Utils.Http as HttpUtils


type alias UpdateModel =
    { competitions : List Competition
    , location : Location
    , mdl : Material.Model
    }


updateModel : List Competition -> Location -> UpdateModel
updateModel competitions location =
    { competitions = competitions
    , location = location
    , mdl = Material.model
    }


init : ( List Competition, Cmd Msg )
init =
    let
        filterBuilder time =
            CompetitionsFilter (time - (7 * 24 * Time.hour)) (time + (28 * 24 * Time.hour))
    in
        ( [], (loadEventorCompetitions filterBuilder) )


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
    case message of
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
            ( updateModel competitions model.location, Cmd.none )

        FetchFail x ->
            ( (Debug.log (HttpUtils.messageToString x) model), Cmd.none )

        MDL action' ->
            Material.update MDL action' model
