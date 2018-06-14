module Models exposing (Model, initialModel)

import Routing exposing (Route)
import Company.Models exposing (Company)


type alias Model =
    { companies : List Company
    , route : Route
    }


initialModel : Route -> Model
initialModel route =
    { companies = []
    , route = route
    }
