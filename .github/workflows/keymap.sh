#!/bin/bash

# References for command substitution
# https://unix.stackexchange.com/questions/444946/how-can-we-run-a-command-stored-in-a-variable
# https://devhints.io/bash#arrays

PROJECT=ehrbl
KEYMAP_CONFIG=".images/keymap.yml"

LAYOUTS=('caster')
ZMK_KEYMAP="config/boards/shields/${PROJECT}/${PROJECT}.keymap"
DTS_LAYOUT="config/boards/shields/${PROJECT}/${PROJECT}-layouts.dtsi"

[[ -n $DTS_LAYOUT ]] &&
    KMD_LAYOUT=(--dts-layout $DTS_LAYOUT)

[[ -e "$KEYMAP_CONFIG" ]] && 
    CONFIG=(--config "$KEYMAP_CONFIG") ||
    CONFIG=()

for i in "${!LAYOUTS[@]}"; do
    echo "Rendering Layout ${LAYOUTS[$i]}"
    BASE=".images/keymap_${LAYOUTS[$i]}"
    YML="$BASE.yml"
    KEYMAP_zmk_preamble="#define LAYOUT $i" keymap "${CONFIG[@]}" parse -z "$ZMK_KEYMAP" > "$YML" &&
        keymap draw "${KMD_LAYOUT[@]}" "$YML" > "$BASE.svg"
    [[ $? -ne 0 ]] && exit 1
    rm "$YML"
done


