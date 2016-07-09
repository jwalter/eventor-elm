module View exposing (..)

import Html exposing (..)
import Html.App
import Html.Events exposing (onClick)
import Html.Attributes exposing (id, class, href, style)
import Models exposing (..)
import Messages exposing (..)
import Competitions.View


view : AppModel -> Html Msg
view model =
    div []
        [ menu model
        , pageView model
        ]


menu : AppModel -> Html Msg
menu model =
    div [ class "p2 white bg-black" ]
        [ div []
            [ menuLink ShowHome "btnHome" "Home"
            , text "|"
            , menuLink ShowCompetitions "btnCompetitions" "Competitions"
            , text "|"
            , menuLink ShowAbout "btnAbout" "About"
            ]
        ]


menuLink : Msg -> String -> String -> Html Msg
menuLink message viewId label =
    a
        [ id viewId
        , href "javascript://"
        , onClick message
        , class "white px2"
        ]
        [ text label ]


pageView : AppModel -> Html Msg
pageView model =
    case model.route of
        HomeRoute ->
            div [ class "p2" ]
                [ h1 [ id "title", class "m0" ] [ text "Home" ]
                , div [] [ text "Click on Competitions to start routing" ]
                ]

        AboutRoute ->
            div [ class "p2" ]
                [ h1 [ id "title", class "m0" ] [ text "About" ]
                ]

        CompetitionsRoutes competitionsRoute ->
            let
                viewModel =
                    { competitions = model.competitions
                    , route = competitionsRoute
                    , location = model.location
                    }
            in
                div [ class "p2" ]
                    [ Html.App.map CompetitionsMsg (Competitions.View.view viewModel)
                    ]

        NotFoundRoute ->
            notFoundView model


notFoundView : AppModel -> Html msg
notFoundView model =
    div []
        [ text "Not Found"
        ]
