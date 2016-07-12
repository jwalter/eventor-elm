module Utils.Http exposing (messageToString)

import Http

messageToString : Http.Error -> String
messageToString error =
    case error of
        Http.Timeout ->
            "Timeout"

        Http.NetworkError ->
            "Network error"

        Http.UnexpectedPayload s ->
            "Unexpected payload: " ++ s

        Http.BadResponse n s ->
            "Bad response"
