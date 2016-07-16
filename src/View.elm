module View exposing (..)

import Html exposing (..)
import Html.App
import Html.Attributes exposing (id, class, href, style)
import Models exposing (..)
import Material.Layout as Layout
import Material.Menu as Menu
import Messages exposing (..)
import Competitions.Models
import Competitions.View


view : AppModel -> Html Msg
view model =
    Layout.render MDL
        model.mdl
        [ Layout.fixedHeader ]
        { header = header model
        , drawer = []
        , tabs = ( [], [] )
        , main = [ pageView model ]
        }


header : AppModel -> List (Html Msg)
header model =
    case model.route of
        CompetitionsRoutes competitionsRoute ->
            [ Html.App.map CompetitionsMsg (Competitions.View.headerRow (competitionsModel model competitionsRoute)) ]

        _ ->
            [ Layout.row [] [ Layout.title [] [ text "Eventor" ] ] ]


pageView : AppModel -> Html Msg
pageView model =
    case model.route of
        AboutRoute ->
            div [ ]
                [ h1 [ id "title", class "m0" ] [ text "About" ]
                , (Menu.render MDL
                    [ 0 ]
                    model.mdl
                    [ Menu.ripple
                    ]
                    [ Menu.Item False True <| text "Startlista"
                    ]
                  )
                ]

        CompetitionsRoutes competitionsRoute ->
            let
                viewModel =
                    competitionsModel model competitionsRoute
            in
                div [ class "page-content" ]
                    [ Html.App.map CompetitionsMsg (Competitions.View.view viewModel)
                    ]

        NotFoundRoute ->
            notFoundView model


competitionsModel : AppModel -> Competitions.Models.Route -> Competitions.View.ViewModel
competitionsModel model route =
    Competitions.View.model model.competitions model.startList model.location route model.mdl


notFoundView : AppModel -> Html msg
notFoundView model =
    div []
        [ text "Sidan saknas"
        ]
