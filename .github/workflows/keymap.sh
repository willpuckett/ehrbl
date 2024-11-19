#!/bin/bash

PROJECT=ehrbl
LAYOUTS=('caster')
COLS=8
ZMK_KEYMAP="config/boards/shields/${PROJECT}/${PROJECT}.keymap"
# See [this link](https://github.com/caksoylar/keymap-drawer/blob/main/KEYMAP_SPEC.md#colsthumbs-notation-specification)
# for info on cols-thumbs notation
COLS_THUMBS='2v33^3+2> 2<+33^32v'
# Or, pick a keyboard from https://config.qmk.fm
QMK_KEYBOARD=""
DTS_LAYOUT="config/boards/shields/${PROJECT}/${PROJECT}-layouts.dtsi"
# Store the flag and variable in an array to expand 
# each element as a seperate shell word in the command later....
# https://unix.stackexchange.com/questions/444946/how-can-we-run-a-command-stored-in-a-variable
KMD_LAYOUT=(--cols-thumbs-notation "$COLS_THUMBS") &&
    [[ -n $QMK_KEYBOARD ]] &&
        KMD_LAYOUT=(--qmk-keyboard "$QMK_KEYBOARD") ||
    [[ -n $DTS_LAYOUT ]] &&
        KMD_LAYOUT=(--dts-layout $DTS_LAYOUT)

# Iterate over array keys
# https://devhints.io/bash#arrays
for i in "${!LAYOUTS[@]}"; do
    echo "Rendering Layout ${LAYOUTS[$i]}"
    BASE=".images/keymap_${LAYOUTS[$i]}"
    YML="$BASE.yml"
    # note you have to have the quotes for KMD_LAYOUT expansion
    KEYMAP_zmk_preamble="#define LAYOUT $i" keymap parse -c $COLS -z "$ZMK_KEYMAP" > "$YML" &&
        keymap draw "${KMD_LAYOUT[@]}" "$YML" > "$BASE.svg"
    [[ $? -ne 0 ]] && exit 1
    rm "$YML"
done


