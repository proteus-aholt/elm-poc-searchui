module Company.Edit exposing (view)

import Company.Models exposing (Company)
import Msgs exposing (Msg)
import Html exposing (Html, div, text)


view : Company -> Html Msg
view company =
    div []
        [ text "Companies" ]
