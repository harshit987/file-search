#!/bin/bash

echo "Hello World!"
cwd=$(pwd)
cnt=0
recursion() {
if [[ -d $1 ]]
	then
for d in $1/*; do
  cnt=$((cnt+1)) 
done
if [[ $cnt -eq 1 ]]
	then
	echo $cnt
	return 
fi
IFS='/' read -ra arr <<< "$1"
size=${#arr[@]}
check=${arr[$(($size-1))]}
echo $check $2
if [[ $check == $2 ]]
	then
	exec bash
fi
if [[ $cnt -ne 1 ]]
	then

	for d in $1/*; do
        if [[ $d != $1 ]]
        	then
        	cd $d
        	recursion $d $2
        	cd $1
        fi
	done
fi
fi
}
recursion $cwd $1
