module Msgs exposing (Msg(..))

import Company.Storage exposing (CompanyListResponse)
import Navigation exposing (Location)


type Msg
    = OnLocationChange Location
    | OnCompanyListReceived CompanyListResponse
