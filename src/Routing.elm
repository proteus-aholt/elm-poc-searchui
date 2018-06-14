module Routing exposing (Route(..), parseLocation)

import Company.Models exposing (CompanyId)
import Navigation exposing (Location)
import UrlParser exposing (Parser, parseHash, oneOf, map, top, s, string, (</>))


type Route
    = CompaniesRoute
    | CompanyRoute CompanyId
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map CompaniesRoute top
        , map CompanyRoute (s "company" </> string)
        , map CompaniesRoute (s "companies")
        ]


parseLocation : Location -> Route
parseLocation location =
    case parseHash matchers location of
        Just route ->
            route

        Nothing ->
            NotFoundRoute
