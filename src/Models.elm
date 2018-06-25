module Models exposing (Model, initialModel)

import Routing exposing (Route)
import Company.Storage

type alias Model =
    { route : Route
    , listResponse : Company.Storage.CompanyListResponse
    }


initialModel : Route -> Model
initialModel route =
    { route = route
    , listResponse = 
        { limit = 10
        , offset = 0
        , orderBy = "id"
        , total = 0
        , result = [] 
        }
    }