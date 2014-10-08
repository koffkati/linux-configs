#!/bin/bash

usage="Usage: app...OPTION...APP\n -i | --install Install $app\n -r | --remove Remove $app\n -s | --search Search for $app\n -I | --info Information about $app\n"

case $1 in
  -i|--install) act="sudo apt-get install";; #assigns $act to an apt function based on the options passed by the user
  -r|--remove) act="sudo apt-get remove";;
  -s|--search) act="apt-cache search";;
  -I|--info) act="apt-cache show";;
  -h|--help|"") printf '%b\n' "$usage";;
esac
exec $act $2
