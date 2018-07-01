module Models exposing (Model, initialModel)

import Routing exposing (Route)
import Company.Models exposing (Company)


type alias Model =
    { route : Route
    , companies : List Company
    }


initialModel : Route -> Model
initialModel route =
    { route = route
    , companies =
        [ { id = 1
          , name = "google"
          , website = "https://www.google.com"
          }
        , { id = 2
          , name = "facebook"
          , website = "https://www.facebook.com"
          }
        ]
    }
