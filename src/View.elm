module View exposing (view)

import Html exposing (Html, div, text)
import Msgs exposing (Msg(..))
import Models exposing (Model)
import Routing exposing (Route(..))
import Error.NotFound


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        CompaniesRoute ->
            div []
                [ text "Companies" ]

        CompanyRoute _ ->
            div []
                [ text "Company" ]

        NotFoundRoute ->
            Error.NotFound.view
