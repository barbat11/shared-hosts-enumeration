#!/bin/bash 

#Shared Hosting Enumeration script by Paul Barbat
#Usage: ./script.sh ip-list.txt
#Each IP output in separate directory

self="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"

if type aquatone 2>&1 | grep -q "not"; then
  printf "Error: Aquatone not installed. To install, visit https://github.com/michenriksen/aquatone.\n"
  exit 0
  fi

if [ $# -lt 1 ]; 
   then 
   printf "Error: not enough arguments. Usage: ./${self} <list-of-IPs>\n" $# 
   exit 0 
   fi 

while read LINE; do curl https://api.hackertarget.com/reverseiplookup/?q=$LINE | aquatone -scan-timeout 500 -out $(echo $LINE | tr "." "-"); done < $1
#echo ${OUTPUT} | tr " " "\n" | aquatone -scan-timeout 500 -out $2
