module Company.Edit exposing (view)

import Company.Models exposing (Company)
import Routing exposing (companiesPath)
import Msgs exposing (Msg)
import Html exposing (Html, div, text, a)
import Html.Attributes exposing (href)


view : Company -> Html Msg
view company =
    div []
        [ text ("Company " ++ company.name) 
        , a [ href companiesPath]
            [ text "Back" ]
        ]
