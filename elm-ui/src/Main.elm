module Main exposing (main)

{-| -}

import Element as Ui
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html


rgb : Float -> Float -> Float -> Ui.Color
rgb r g b =
    Ui.rgb
        (r / 255)
        (g / 255)
        (b / 255)


colors : { dark : Ui.Color, gold : Ui.Color, teal : Ui.Color, white : Ui.Color }
colors =
    { dark = rgb 30 29 33
    , gold = rgb 167 122 44
    , white = rgb 248 248 248
    , teal = rgb 63 149 165
    }


main : Html.Html msg
main =
    Ui.layout
        [ Background.color colors.dark
        , Font.color colors.white
        , Font.size 32
        , Font.family
            [ Font.typeface "EB Garamond"
            , Font.sansSerif
            ]
        ]
        (Ui.column [ Ui.centerX, Ui.centerY, Ui.spacing 8 ]
            [ Ui.row [ Ui.spacing 16 ]
                [ Ui.el [ Font.size 256, Font.color colors.teal ] (Ui.text "Elm")
                , Ui.column [ Ui.moveDown 16 ]
                    [ Ui.el [ Font.size 128, Font.color colors.gold ] (Ui.text "UI")
                    , Ui.el [] (Ui.text "Typesafe design systems")
                    ]
                ]
            , Ui.row [ Font.italic ]
                [ Ui.el [] (Ui.text "Coming soon, follow ")
                , Ui.link [ Font.color colors.gold ]
                    { url = "https://twitter.com/mech_elephant"
                    , label = Ui.text "@mech_elephant"
                    }
                , Ui.el [] (Ui.text " for more info!")
                ]
            ]
        )
