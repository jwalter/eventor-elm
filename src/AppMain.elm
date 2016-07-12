module AppMain exposing (..)

import Navigation
import Hop exposing (matchUrl)
import Hop.Types exposing (Router)
import Material.Layout as Layout
import Messages exposing (..)
import Models exposing (..)
import Update exposing (..)
import View exposing (..)
import Competitions.Update
import Routing.Config


urlParser : Navigation.Parser ( Route, Hop.Types.Location )
urlParser =
    Navigation.makeParser (.href >> matchUrl Routing.Config.config)


urlUpdate : ( Route, Hop.Types.Location ) -> AppModel -> ( AppModel, Cmd Msg )
urlUpdate ( route, location ) model =
    ( { model | route = route, location = location }, Cmd.none )

init : ( Route, Hop.Types.Location ) -> ( AppModel, Cmd Msg )
init ( route, location ) =
    let
        ( compModel, compCmd ) =
            Competitions.Update.init

        model =
            newAppModel route location
    in
        ( { model | competitions = compModel }, Cmd.map CompetitionsMsg compCmd )


main : Program Never
main =
    Navigation.program urlParser
        { init = init
        , view = view
        , update = update
        , urlUpdate = urlUpdate
        , subscriptions = .mdl >> Layout.subs MDL
        }
