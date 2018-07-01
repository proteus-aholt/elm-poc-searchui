module Company.Listing exposing (view)

import Company.Models exposing (Company)
import Models exposing (Model)
import Msgs exposing (Msg)
import Html exposing (Html, div, text)


view : Model -> Html Msg
view model =
    div []
        [ text "Companies"
        , list model.companies
        ]

list : List Company -> Html Msg
list companies =
    div []
        (List.map row companies)

row : Company -> Html Msg
row company =
    div []
        [ text company.name ]