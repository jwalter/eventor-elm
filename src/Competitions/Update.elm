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
import Competitions.Models exposing (..)
import Competitions.Messages exposing (Msg(..))
import Competitions.Routing.Utils
import Utils.Http as HttpUtils


type alias UpdateModel =
    { competitions : List Competition
    , startList : StartList
    , location : Location
    , mdl : Material.Model
    }


updateModel : List Competition -> StartList -> Location -> Material.Model -> UpdateModel
updateModel competitions startList location mdl =
    { competitions = competitions
    , startList = startList
    , location = location
    , mdl = mdl
    }


init : ( List Competition, Cmd Msg )
init =
    let
        filterBuilder time =
            CompetitionsFilter (time - (7 * 24 * Time.hour)) (time + (28 * 24 * Time.hour))
    in
        ( [], (loadEventorCompetitions filterBuilder) )

{-}
initMock : ( List Competition, Cmd Msg )
initMock =
    ( Competitions.Mock.competitions, Cmd.none )
--}

initStartList : StartList -> CompetitionId -> ( StartList, Cmd Msg )
initStartList startList competitionId =
    let
        _ =
            Debug.log "initStartList" ""

        updateStartList =
            --(loadMockStarts competitionId competitionId, Cmd.none)
            ( Loading, loadEventorStartList competitionId )
    in
        case startList of
            Empty ->
                updateStartList

            Loaded loadedCompetitionId classStarts ->
                if (loadedCompetitionId == competitionId) then
                    ( startList, Cmd.none )
                else
                    updateStartList

            Loading ->
                ( startList, Cmd.none )

{-}
loadMockStarts : CompetitionId -> RaceId -> StartList
loadMockStarts competitionId raceId =
    let
        _ =
            Debug.log "loadMockStarts" ""
    in
        Competitions.Mock.startList raceId
-}

routerConfig : Config Models.Route
routerConfig =
    Routing.Config.config


navigationCmd : String -> Cmd a
navigationCmd path =
    Navigation.newUrl (makeUrl Routing.Config.config path)


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

        ShowStartList competitionId raceId ->
            let
                path =
                    Competitions.Routing.Utils.reverseWithPrefix (Competitions.Models.StartListRoute competitionId raceId)

                ( newStartList, startListCmd ) =
                    initStartList model.startList competitionId

                --( loadMockStarts competitionId raceId, Cmd.none )
            in
                ( { model | startList = newStartList }, Cmd.batch [ startListCmd, navigationCmd path ] )

        FetchSucceed competitions ->
            ( updateModel competitions model.startList model.location model.mdl, Cmd.none )

        FetchStartListSucceed startList ->
            ( updateModel model.competitions startList model.location model.mdl, Cmd.none )

        FetchFail x ->
            ( { model | startList = Empty }, (Debug.log (HttpUtils.messageToString x) Cmd.none) )

        MDL msg' ->
            Material.update MDL msg' model
