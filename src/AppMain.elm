module AppMain exposing (..)

import Navigation
import Task
import Time
import Hop exposing (matchUrl)
import Hop.Types exposing (Router)
import Messages exposing (..)
import Models exposing (..)
import Update exposing (..)
import View exposing (..)
import Routing.Config


urlParser : Navigation.Parser ( Route, Hop.Types.Location )
urlParser =
    Navigation.makeParser (.href >> matchUrl Routing.Config.config)


urlUpdate : ( Route, Hop.Types.Location ) -> AppModel -> ( AppModel, Cmd Msg )
urlUpdate ( route, location ) model =
    let
        _ =
            Debug.log "urlUpdate location" location
    in
        ( { model | route = route, location = location }, Cmd.none )


init : ( Route, Hop.Types.Location ) -> ( AppModel, Cmd Msg )
init ( route, location ) =
    let
        model =
            newAppModel route location
    in
        (model, (Task.perform TimeFailed TimeReceived Time.now))
{-
    let
        ( compModel, compCmd ) =
            Competitions.Update.init

        model =
            newAppModel route location
    in
        ( { model | competitions = compModel }, Cmd.map CompetitionsMsg compCmd )
-}

main : Program Never
main =
    Navigation.program urlParser
        { init = init
        , view = view
        , update = update
        , urlUpdate = urlUpdate
        , subscriptions = (always Sub.none)
        }
