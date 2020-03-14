#!/bin/bash

if [ -e $HOME/.inspireflag ]  
then  
    echo "Normal login"
else  
    touch $HOME/.inspireflag
    echo "Launching InspireKit"
    cd /usr/share/inspire/inspirekit/
    java -jar InspireKit-1.0-SNAPSHOT.jar
    echo "Generating Desktop File"
    sudo cp inspirekit.desktop /usr/share/applications/
    cd $HOME/
fi  
