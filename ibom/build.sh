#!/bin/bash

for pcbfolder in ../reform2-*pcb
do
    fname=$(basename -- $pcbfolder)
    fname=${fname%"-pcb"}

    echo
    echo "PCB: $fname -----------------------------------------------"
    
    python3 ~/.kicad_plugins/InteractiveHtmlBom/InteractiveHtmlBom/generate_interactive_bom.py --dest-dir ../ibom/$fname --include-tracks --include-nets --netlist-file $pcbfolder/$fname.net --layer-view F --bom-view top-bottom --dark-mode --extra-fields Manufacturer,Manufacturer_No --dnp-field DNP $pcbfolder/$fname.kicad_pcb
done
