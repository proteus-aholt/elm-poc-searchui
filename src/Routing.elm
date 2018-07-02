module Routing exposing (Route(..), parseLocation, companiesPath, companyPath)

import Company.Models exposing (CompanyId)
import Navigation exposing (Location)
import UrlParser exposing (Parser, parseHash, oneOf, map, top, s, int, (</>))


type Route
    = CompaniesRoute
    | CompanyRoute CompanyId
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map CompaniesRoute top
        , map CompanyRoute (s "company" </> int)
        , map CompaniesRoute (s "companies")
        ]


parseLocation : Location -> Route
parseLocation location =
    case parseHash matchers location of
        Just route ->
            route

        Nothing ->
            NotFoundRoute

companiesPath : String
companiesPath = "#companies"

companyPath : CompanyId -> String
companyPath id = "#company" ++ (toString id)