module Company.Models exposing (CompanyId, Company, new)


type alias CompanyId =
    String


type alias Company =
    { id : CompanyId
    , name : String
    , website : String
    }


new : Company
new =
    { id = ""
    , name = ""
    , website = ""
    }
