#!/bin/bash

echo "Hello World!"
File1=$1
File1="$File1/"
File2=$2
File2="$File2/"
for d in */; do

	if [[ $d = $File1 ]]
    then
      cd ./$d
      for e in */; do
          if [[ $e = $File2 ]]
          then

             echo "awesome"
             cd ./$e
          fi
      done
       
    fi

done
exec bash