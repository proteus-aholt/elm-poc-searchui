module Storage exposing (ObjectStoreInfo, DBInfo, TransactionInfo)


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
