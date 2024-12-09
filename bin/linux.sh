#!/bin/bash

unamestr=$(uname)

if [[ $unamestr != "Linux" ]]; then
	echo "Error" >> ~/linuxsetup.log
	exit 1
fi

if [ ! -d "$HOME/.TRASH" ]; then
	mkdir "$HOME/.TRASH"
	echo "Created .TRASH directory in home." >> ~/linuxsetup.log
else
	echo "working .TRASH directory already exists"

fi

