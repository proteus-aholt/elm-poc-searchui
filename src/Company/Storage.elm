port module Company.Storage exposing (getCompanies, companyListGotten, CompanyListRequest, CompanyListResponse)

import Company.Models exposing (Company)


type alias CompanyListRequest =
    { limit : Int
    , offset : Int
    , orderBy: String
    }


type alias CompanyListResponse =
    { limit : Int
    , offset : Int
    , orderBy: String
    , total : Int
    , result : List Company
    }


port getCompanies : CompanyListRequest -> Cmd msg


port companyListGotten : (CompanyListResponse -> msg) -> Sub msg
