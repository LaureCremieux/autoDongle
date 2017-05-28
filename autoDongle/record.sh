#!/bin/bash
sudo chmod u+x $PWD/Macros
echo "Hello, his script allows you to register a macro!"

read -p "Enter the name of the recording: " name
echo "Thank you, your recording will be called $name and stored in $PWD/Macros"

read -r -p "Press [Enter] when you are ready to record, and Ctrl+C when you want to stop the recording" key
cnee --record --verbose --mouse --keyboard -smp > $PWD/macros/$name

