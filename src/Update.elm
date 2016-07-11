module Update exposing (..)

import Debug
import Navigation
import Hop exposing (makeUrl, makeUrlFromLocation, setQuery)
import Hop.Types
import Messages exposing (..)
import Models exposing (..)
import Routing.Config
import Routing.Utils
import Competitions.Update
import Competitions.Models


navigationCmd : String -> Cmd a
navigationCmd path =
    Navigation.newUrl (makeUrl Routing.Config.config path)


routerConfig : Hop.Types.Config Route
routerConfig =
    Routing.Config.config


update : Msg -> AppModel -> ( AppModel, Cmd Msg )
update message model =
    case Debug.log "message" message of
        CompetitionsMsg subMessage ->
            let
                updateModel =
                    { competitions = model.competitions
                    , location = model.location
                    }

                ( updatedModel, cmd ) =
                    Competitions.Update.update subMessage updateModel
            in
                ( { model | competitions = updatedModel.competitions }, Cmd.map CompetitionsMsg cmd )

        ShowCompetitions ->
            let
                path =
                    Routing.Utils.reverse (CompetitionsRoutes Competitions.Models.CompetitionsRoute)
            in
                ( model, navigationCmd path )

        ShowAbout ->
            let
                path =
                    Routing.Utils.reverse AboutRoute
            in
                ( model, navigationCmd path )

        TimeFailed msg ->
            let
                _ = Debug.log "TimeFailed" msg
            in
                ( model, Cmd.none )

        TimeReceived time ->
            let
                ( compModel, compCmd ) =
                    Competitions.Update.init time

            in
                ( { model | competitions = compModel }, Cmd.map CompetitionsMsg compCmd )
