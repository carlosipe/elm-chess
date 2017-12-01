module Model exposing (..)

import Dict exposing (Dict)


type alias Model =
    { pieces : Dict Position Piece
    }


type alias Piece =
    ( Figure, PieceColor )


type PieceColor
    = White
    | Black


type Figure
    = King
    | Queen
    | Rook
    | Bishop
    | Knight
    | Pawn


type alias Position =
    ( Int, Int )


initialModel =
    { pieces = Dict.empty }
