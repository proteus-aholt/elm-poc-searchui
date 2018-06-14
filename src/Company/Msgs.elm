module Company.Msgs exposing (Msg(..))

import Http
import Company.Models exposing (CompanyId, Company)


type Msg
    = OnFetchAll (Result Http.Error (List Company))
    | ShowCompanies
    | ShowCompany CompanyId
