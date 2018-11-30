#!/bin/bash

echo "Hello World!"
File1=$1
File1="$File1/"

for d in */; do

	if [[ $d = $File1 ]]
    then
      cd ./$d
       
    fi

done
exec bash