module Main exposing (..)

import Html exposing (..)
import AFrame exposing (..)
import ModelLoader exposing (..)


type alias Model =
    { modelName : String }


type Msg
    = NoOp


init : ( Model, Cmd Msg )
init =
    ( Model "T-Rex-00.ply", Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            model ! []


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    scene []
        [ entity [ plymodel ("src: url(/" ++ model.modelName ++ ")") ] []
        ]


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , subscriptions = subscriptions
        , update = update
        }
