#!/bin/bash

echo "Hello World!"
File1=$1
File1="$File1/"
cnt=0
recursion(){
for d in */; do
  cnt=$((cnt+1))

done
if [[ $cnt -eq 1 ]]
then
  echo "1"
  return
fi
if [[ $cnt -gt 1 ]]
then
for d in */; do

	  if [[ $d != "*/" ]]
	  then
	  echo $d
      cd ./$d 
      
      if [[ $d == $File1 ]]
      then
        exec bash
      fi
      recursion
      cd -
  fi
done
fi

}
recursion