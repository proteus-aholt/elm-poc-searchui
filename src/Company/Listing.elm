module Company.Listing exposing (view)

import Models exposing (Model)
import Msgs exposing (Msg)
import Html exposing (Html, div, text)


view : Model -> Html Msg
view model =
    div []
        [ text "Companies" ]
