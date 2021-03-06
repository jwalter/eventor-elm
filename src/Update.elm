module Update exposing (..)

import Navigation
import Hop exposing (makeUrl, makeUrlFromLocation, setQuery)
import Hop.Types
import Material
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
    case message of
        CompetitionsMsg subMessage ->
            let
                updateModel =
                    { competitions = model.competitions
                    , startList = model.startList
                    , location = model.location
                    , mdl = model.mdl
                    }

                ( updatedModel, cmd ) =
                    Competitions.Update.update subMessage updateModel
            in
                ( { model | competitions = updatedModel.competitions, startList = updatedModel.startList, mdl = updatedModel.mdl }, Cmd.map CompetitionsMsg cmd )

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

        MDL action' ->
            Material.update MDL action' model
