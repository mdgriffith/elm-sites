#!/usr/bin/env bash

cp assets/index.html dist/index.html

# Compile elm app and minify
elm make --optimize src/Main.elm --output dist/elm.js
terser dist/elm.js --compress 'pure_funcs="F2,F3,F4,F5,F6,F7,F8,F9,A2,A3,A4,A5,A6,A7,A8,A9",pure_getters,keep_fargs=false,unsafe_comps,unsafe' | terser --mangle --output=dist/elm.min.js