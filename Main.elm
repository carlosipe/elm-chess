module Main exposing (..)

import Html
import Model exposing (Model)
import View exposing (view)


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )


init : ( Model, Cmd Msg )
init =
    ( Model.initialModel, Cmd.none )


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = (\_ -> Sub.none)
        }
