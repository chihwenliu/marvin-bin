#!/bin/bash

#
#  add following line to use the common_func.sh
#  ## SCRIPT_DIR=$(dirname ${BASH_SOURCE[0]})
#  ## [ ! -e $SCRIPT_DIR/common_func.sh ] && echo "$SCRIPT_DIR/common_func.sh does not exist" && exit
#  ## source $SCRIPT_DIR/common_func.sh
#
#

NC='\e[0m'               # reset to default state
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'

BOLD='\033[1m'
#dbg_enabled=0           # if dbg msg is desired, set to '1'

function err_msg(){
  echo -e "\n ${RED} "${1}" ${NC} \n" && exit 1
}

function dbg_msg(){
  [ ! -z $dbg_enabled ] && [ $dbg_enabled -eq 1 ] && echo -e "${YELLOW} ${1} ${NC}"
}

function pause(){
   # restat until any key is pressed
   read -p "$*"
}

dbg_msg "source common_func.sh"
