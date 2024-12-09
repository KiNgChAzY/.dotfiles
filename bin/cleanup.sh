#!/bin/bash

if [ -f "$HOME/.nanorc" ]; then
  rm "$HOME/.nanorc"
  echo "Removed" >> ~/linuxsetup.log
else
  echo "file does not exist" >> ~/linuxsetup.log
fi

sed -i '/source ~\/.dotfiles\/etc\/bashrc_custom/d' "$HOME/.bashrc"

if [ -d "$HOME/.TRASH" ]; then
  rm -rf "$HOME/.TRASH"
  echo "Removed .TRASH" >> ~/linuxsetup.log
else
  echo ".TRASH do not exist" >> ~/linuxsetup.log
fi
