module Company.Models exposing (CompanyId, Company, new)


type alias CompanyId =
    Int


type alias Company =
    { id : CompanyId
    , name : String
    , website : String
    }


new : Company
new =
    { id = 0
    , name = ""
    , website = ""
    }
