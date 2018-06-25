module Main exposing (main)

import Msgs exposing (Msg)
import Routing
import Models exposing (Model, initialModel)
import Navigation exposing (Location)
import Update exposing (update)
import View exposing (view)
import Company.Storage


init : Location -> ( Model, Cmd Msg )
init location =
    let
        currentRoute =
            Routing.parseLocation location

        initial = initialModel currentRoute
    in
        ( initial
        , Company.Storage.getCompanies
            { limit = initial.listResponse.limit
            , offset = initial.listResponse.offset
            , orderBy = initial.listResponse.orderBy
            }
        )

subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.batch
        [ Company.Storage.companyListGotten Msgs.OnCompanyListReceived
        ]

main : Program Never Model Msg
main =
    Navigation.program Msgs.OnLocationChange
        { view = view
        , init = init
        , update = update
        , subscriptions = subscriptions
        }
