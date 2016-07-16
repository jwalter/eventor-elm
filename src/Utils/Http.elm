module Utils.Http exposing (messageToString)

import Http
import String

messageToString : Http.Error -> String
messageToString error =
    case error of
        Http.Timeout ->
            "Timeout"

        Http.NetworkError ->
            "Network error"

        Http.UnexpectedPayload s ->
            "Unexpected payload: " ++ (String.left 500 s)

        Http.BadResponse n s ->
            "Bad response"
