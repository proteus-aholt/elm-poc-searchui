module Main exposing (main)

import Msgs exposing (Msg)
import Routing
import Models exposing (Model, initialModel)
import Navigation exposing (Location)
import Update exposing (update)
import View exposing (view)


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Routing.parseLocation location

        initial = initialModel currentRoute
    in
        ( initial, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none

main : Program Never Model Msg
main =
    Navigation.program Msgs.OnLocationChange
        { view = view
        , init = init
        , update = update
        , subscriptions = subscriptions
        }
