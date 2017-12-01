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
    { pieces = Dict.fromList initialPiecesList }


initialPiecesList =
    [ -- Whites
      ( ( 0, 0 ), ( Rook, White ) )
    , ( ( 1, 0 ), ( Knight, White ) )
    , ( ( 2, 0 ), ( Bishop, White ) )
    , ( ( 3, 0 ), ( Queen, White ) )
    , ( ( 4, 0 ), ( King, White ) )
    , ( ( 5, 0 ), ( Bishop, White ) )
    , ( ( 6, 0 ), ( Knight, White ) )
    , ( ( 7, 0 ), ( Rook, White ) )

    -- Pawns
    , ( ( 0, 1 ), ( Pawn, White ) )
    , ( ( 1, 1 ), ( Pawn, White ) )
    , ( ( 2, 1 ), ( Pawn, White ) )
    , ( ( 3, 1 ), ( Pawn, White ) )
    , ( ( 4, 1 ), ( Pawn, White ) )
    , ( ( 5, 1 ), ( Pawn, White ) )
    , ( ( 6, 1 ), ( Pawn, White ) )
    , ( ( 7, 1 ), ( Pawn, White ) )

    -- Blacks
    , ( ( 0, 7 ), ( Rook, Black ) )
    , ( ( 1, 7 ), ( Knight, Black ) )
    , ( ( 2, 7 ), ( Bishop, Black ) )
    , ( ( 3, 7 ), ( Queen, Black ) )
    , ( ( 4, 7 ), ( King, Black ) )
    , ( ( 5, 7 ), ( Bishop, Black ) )
    , ( ( 6, 7 ), ( Knight, Black ) )
    , ( ( 7, 7 ), ( Rook, Black ) )

    -- Pawns
    , ( ( 0, 6 ), ( Pawn, White ) )
    , ( ( 1, 6 ), ( Pawn, White ) )
    , ( ( 2, 6 ), ( Pawn, White ) )
    , ( ( 3, 6 ), ( Pawn, White ) )
    , ( ( 4, 6 ), ( Pawn, White ) )
    , ( ( 5, 6 ), ( Pawn, White ) )
    , ( ( 6, 6 ), ( Pawn, White ) )
    , ( ( 7, 6 ), ( Pawn, White ) )
    ]
