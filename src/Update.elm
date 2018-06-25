module Update exposing (update)

import Msgs exposing (Msg)
import Models exposing (Model)
import Routing exposing (parseLocation)
import Company.Storage

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.OnLocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | route = newRoute }, Cmd.none )

        Msgs.OnCompanyListReceived response ->
            ( handleCompanyListReceived model response, Cmd.none )


handleCompanyListReceived : Model -> Company.Storage.CompanyListResponse -> Model
handleCompanyListReceived model response =
    { model | listResponse = response }