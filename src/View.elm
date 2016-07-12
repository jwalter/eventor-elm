module View exposing (..)

import Html exposing (..)
import Html.App
import Html.Events exposing (onClick)
import Html.Attributes exposing (id, class, href, style)
import Models exposing (..)
import Material.Layout as Layout
import Material.Scheme
import Messages exposing (..)
import Competitions.View


view : AppModel -> Html Msg
view model =
    Layout.render MDL
        model.mdl
        [ Layout.fixedHeader ]
        { header = myHeader
        , drawer = []
        , tabs = ( [], [] )
        , main = [ pageView model ]
        }
        |> Material.Scheme.top


myHeader : List (Html Msg)
myHeader =
    [ div [ class "mdl-layout__header-row" ]
        [ span [ class "mdl-layout-title" ] [ text "Eventor" ]
        ]
    ]


menuLink : Msg -> String -> Html Msg -> Html Msg
menuLink message viewId label =
    a
        [ id viewId
        , href "javascript://"
        , onClick message
        , class "white px2"
        ]
        [ label ]


pageView : AppModel -> Html Msg
pageView model =
    case model.route of
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
                div [ class "mdl-layout__content" ]
                    [ div [ class "page-content" ]
                        [ Html.App.map CompetitionsMsg (Competitions.View.view viewModel)
                        ]
                    ]

        NotFoundRoute ->
            notFoundView model


notFoundView : AppModel -> Html msg
notFoundView model =
    div []
        [ text "Not Found"
        ]
