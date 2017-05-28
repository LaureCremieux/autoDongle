#!/bin/bash

DONGLE=$1

echo "PRELIMINARY INFORMATION:"
echo "Here's a list of the available macros you have recorded: "
ls macros


if [ -z "$1" ]
then
    echo "The run.sh script should be run with a macro name as argument. ex: sh run.sh Three. Here's the list of available macros you have recorded: "
    ls macros
    echo "If you can not find the one you want, please feel free to record a new one by running sh record.sh"
    exit
fi
read -p "Before starting, please be aware that your macro will work only if you use the same display, mouse and keyboard as the ones you used for recording. If you don't have them, please record a new macro by running sh record.sh. When you are ready, please insert your Dongle in a USB port, wait for the dongle to be detected, and type [Enter] when you are ready to configure it" y
cnee --replay --verbose --file macros/$DONGLE &
