port module Company.Storage exposing (getAll, getAllComplete)

import Company.Models exposing (Company)
import Storage exposing (TransactionInfo)

port getAll: TransactionInfo -> Cmd msg
port getAllComplete: (List Company -> msg) -> Sub msg