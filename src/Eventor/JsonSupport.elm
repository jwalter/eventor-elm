module Eventor.JsonSupport exposing (insideList)

import Json.Decode exposing (list, map, Decoder)

{-| Apply the given decoder to the last item in a list.
-}
insideList : a -> Decoder a -> Decoder a
insideList collectorStart listItemDecoder =
    map (\aList -> List.foldr (\itemInList accumulated -> itemInList) collectorStart aList) (list listItemDecoder)
