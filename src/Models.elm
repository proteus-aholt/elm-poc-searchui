module Models exposing (Model, intiialModel)

import Routing exposing (Route)
import Company.Models exposing (Company)


type alias Model =
    { companies : List Company
    , route : Route
    }


intiialModel : Route -> Model
intiialModel route =
    { companies = []
    , route = route
    }
