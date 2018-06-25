port module Storage exposing (DBOpenError, ObjectStoreInfo, DBInfo, TransactionInfo, openDB, dbOpenError)


type alias ObjectStoreInfo =
    { name : String
    , keyPath : String
    }


type alias DBInfo =
    { name : String
    , version : Int
    , objectStores : List ObjectStoreInfo
    }


type alias TransactionInfo =
    { db : DBInfo
    , store : ObjectStoreInfo
    }


type alias DBOpenError =
    { db : DBInfo
    , errors : List String
    }


port openDB : DBInfo -> Cmd msg


port dbOpenError : (DBOpenError -> msg) -> Sub msg
