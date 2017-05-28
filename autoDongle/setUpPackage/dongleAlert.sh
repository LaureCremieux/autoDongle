#!/bin/bash

set -x
xhost local:root
export DISPLAY=:0.0

su root -c 'zenity --warning --text="Dongle ready for configuration. /s You may press Ctrl-C and then run sh run.sh from the command line."'
