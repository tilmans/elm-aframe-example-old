module Main exposing (..)

import Html exposing (..)


type alias Model =
    Int


type Msg
    = NoOp


init =
    ( 1, Cmd.none )


update msg model =
    case msg of
        NoOp ->
            model ! []


subscriptions model =
    Sub.none


view model =
    div [] [ text "Up" ]


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , subscriptions = subscriptions
        , update = update
        }
