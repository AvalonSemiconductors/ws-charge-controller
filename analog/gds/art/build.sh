#!/bin/bash
set -e

python3 make_gds.py --cellname td --boundary "0/0" "152/5" --foreground "81/0" --invert-alpha --threshold 196 --pixel-size 0.6 td.png td.gds
klayout -b -r $PDK_ROOT/$PDK/libs.tech/klayout/tech/drc/gf180mcu.drc -rd decks="all,-antenna,-density" -rd input=td.gds -rd report=drc_results.lyrdb -rd run_mode=deep

python3 make_gds.py --cellname avali --boundary "0/0" "152/5" --foreground "81/0" "46/0" --pixel-size 0.6 Logo_BW.png avali.gds
klayout -b -r $PDK_ROOT/$PDK/libs.tech/klayout/tech/scripts/slots.drc -rd input=avali.gds -rd output=avali.gds
klayout -b -r $PDK_ROOT/$PDK/libs.tech/klayout/tech/drc/gf180mcu.drc -rd decks="all,-antenna,-density" -rd input=avali.gds -rd report=drc_results.lyrdb -rd run_mode=deep

python3 make_gds.py --cellname warning --boundary "0/0" "152/5" --foreground "81/0" --threshold 128 --pixel-size 0.7 warning.png warning.gds
klayout -b -r $PDK_ROOT/$PDK/libs.tech/klayout/tech/drc/gf180mcu.drc -rd decks="all,-antenna,-density" -rd input=warning.gds -rd report=drc_results.lyrdb -rd run_mode=deep
