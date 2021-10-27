#!/bin/bash
#
# Author: SekharLee
# Date: 19/3/2021

if [ "$1" == "-h" ]; then
  echo "Usage:" 
         echo " ./crt.sh  domain.name"
  exit 0
fi
if [[ -z "$1" ]]; then
   printf '%s\n' "For Help"
   echo " use command -h"
   exit 1
else
   
curl -s "https://crt.sh/?q=$1" |grep "$1"|cut -d 'T' -f 2|cut -d 'D' -f2|cut -d '<' -f1 |cut -d '>' -f2 |sort -u |grep -iv "&" |grep -iv "*" |sort -u
fi
