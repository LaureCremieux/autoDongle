#!/bin/bash

#DONGLE=$1

echo "Here's a list of the available macros you have recorded:"
echo
ls macros
echo "Warning: Please be aware that these macros will work only if you use the same display, mouse and keyboard as the ones you used for recording"
echo
read -p "Which macro would you like to run? (Alternatively, feel free to record a new macro by running sh record.sh): " name

#if [ -z "$1" ]
#then
#    echo "The run.sh script should be run with a macro name as argument. ex: sh run.sh Three. Here's the list of available macros you have recorded: "
#    ls macros
#    echo "If you can not find the one you want, please feel free to record a new one by running sh record.sh"
#    exit
#fi

#read -p "When you are ready, please insert your Dongle in a USB port, wait for the dongle to be detected, and type [Enter] to start the configuration" y
cnee --replay --verbose --file macros/$name &

