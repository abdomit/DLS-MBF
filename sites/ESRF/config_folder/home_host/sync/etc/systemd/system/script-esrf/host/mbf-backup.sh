#!/bin/bash

AUTOSAVE_FOLDER=/opt/host/autosave

save_state () {
        diff -I '#.*' state `find . -iname "state_*" -print | sort | tail -n 1` > /dev/null
        if [ $? -ne 0 ]
        then
                cp state state_`date +%Y-%m-%d_%H%M`
        fi
}

# Make sure state backup folders exist
mkdir -p $AUTOSAVE_FOLDER/TMBF
mkdir -p $AUTOSAVE_FOLDER/TFIT

cd $AUTOSAVE_FOLDER/TMBF
save_state
cd $AUTOSAVE_FOLDER/TFIT
save_state

