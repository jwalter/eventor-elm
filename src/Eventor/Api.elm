module Eventor.Api exposing (fetchData)

import Http exposing (send, defaultSettings, empty, RawError, Response)
import Task exposing (Task)
import Eventor.ApiKey as ApiKey


fetchData : String -> Task RawError Response
fetchData url =
    send defaultSettings
        { verb = "GET"
        , headers = [ ( "apikey", ApiKey.value ) ]
        , url = url
        , body = empty
        }
