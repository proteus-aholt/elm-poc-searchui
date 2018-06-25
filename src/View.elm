module View exposing (view)

import Html exposing (Html, div)
import Msgs exposing (Msg(..))
import Models exposing (Model)
import Routing exposing (Route(..))
import Company.Listing
import Company.Edit
import Company.Models exposing (CompanyId)
import Error.NotFound


view : Model -> Html Msg
view model =
    div []
        [ page model ]


page : Model -> Html Msg
page model =
    case model.route of
        CompaniesRoute ->
            Company.Listing.view model

        CompanyRoute companyId ->
            companyEditView model companyId

        NotFoundRoute ->
            Error.NotFound.view


companyEditView : Model -> CompanyId -> Html Msg
companyEditView model companyId =
    let
        maybeCompany =
            model.listResponse.result
                |> List.filter (\company -> company.id == companyId)
                |> List.head
    in
        case maybeCompany of
            Just company ->
                Company.Edit.view company

            Nothing ->
                Error.NotFound.view
