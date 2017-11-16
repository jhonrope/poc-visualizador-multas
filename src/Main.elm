module Main exposing (..)

import Html exposing (Html, button, div, h1, input, label, text)
import Html.Attributes exposing (value)
import Html.Events exposing (onClick, onInput)


type alias Model =
    { usuario : String
    }


type Msg
    = CambioInputUsuario String
    | ConsultaSaldoUsuario String


update : Msg -> Model -> Model
update msg model =
    case msg of
        CambioInputUsuario usuario ->
            { model | usuario = usuario }

        ConsultaSaldoUsuario usuario ->
            { model | usuario = "" }


view model =
    div []
        [ h1 [] [ text "Visualizador de Multas" ]
        , div []
            [ label [] [ text "Ingrese su nombre de usuario" ]
            ]
        , div []
            [ input
                [ onInput CambioInputUsuario
                , value model.usuario
                ]
                []
            ]
        , div []
            [ button [ onClick <| ConsultaSaldoUsuario model.usuario ] [ text "Consultar Saldo" ] ]
        , label [] [ text model.usuario ]
        ]


model =
    { usuario = "" }


main =
    Html.beginnerProgram { model = model, view = view, update = update }
