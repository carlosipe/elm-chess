module View exposing (view)

import Element exposing (..)
import Element.Attributes exposing (px, width, height, spacing)
import Style exposing (style)
import Style.Color as Color
import Color exposing (gray, black)


view model =
    Element.layout stylesheet <|
        column NoStyle
            []
            [ column NoStyle
                [ width (px 500), spacing 5 ]
                [ row NoStyle
                    [ spacing 5 ]
                    boardRow
                ]
            ]


boardRow =
    List.range 0 7
        |> List.map
            (\_ ->
                fieldView WhiteField
            )


fieldView color =
    el (Field color) [ width (px 100), height (px 100) ] empty


type Styles
    = NoStyle
    | Field FieldColor


type FieldColor
    = WhiteField
    | BlackField



-- stylesheet : Style.StyleSheet style variation


stylesheet =
    Style.styleSheet
        [ style (Field WhiteField)
            [ Color.background gray ]
        , style (Field BlackField)
            [ Color.background black ]
        ]
