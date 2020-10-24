#!/bin/bash
hosts=(
"google.com"
"xvideos.com"
"pornhub.com"
)
for host in "${hosts[@]}"
do
   for port in {21,22,80,443}
   do
      echo "(echo > /dev/tcp/$host/$port) 2>/dev/null && echo Host:$host Port:$port is open"
   done
done | parallel -k -j 32
