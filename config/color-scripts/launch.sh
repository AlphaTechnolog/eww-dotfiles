#!/bin/bash
colorscripts="$HOME/.config/color-scripts"
script="$(ls $colorscripts | shuf -n 1)"

$colorscripts/$script
