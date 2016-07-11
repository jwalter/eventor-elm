module Utils.Date exposing (format)

import Date exposing (Date, Month)

format : Date -> String
format date =
    toString (Date.year date) ++ "-" ++ toString (monthToInt (Date.month date)) ++ "-" ++ toString (Date.day date)

monthToInt : Month -> Int
monthToInt month =
    case month of
        Date.Jan ->
            1

        Date.Feb ->
            2

        Date.Mar ->
            3

        Date.Apr ->
            4

        Date.May ->
            5

        Date.Jun ->
            6

        Date.Jul ->
            7

        Date.Aug ->
            8

        Date.Sep ->
            9

        Date.Oct ->
            10

        Date.Nov ->
            11

        Date.Dec ->
            12
