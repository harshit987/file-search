#!/bin/bash

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
	return 
fi

if [[ $3 == "-d" ]]
	then
IFS='/' read -ra arr <<< "$1"
size=${#arr[@]}
check=${arr[$(($size-1))]}
if [[ $check == $2 ]]
	then
	exec bash
fi
fi
if [[ $cnt -ne 1 ]]
	then

	for d in $1/*; do
        if [[ $d != $1 ]]
        	then
    
        if [[ $3 == "-f" ]]
	    then
        
        IFS='/' read -ra arr <<< "$d"
        size=${#arr[@]}
        check=${arr[$(($size-1))]}
        
        if [[ $check == $2 ]] 
	       then
	        subl $d
	        exec bash
        fi
        
        fi


        echo $d	
        cd $d
        recursion $d $2 $3
        cd $1
        
        fi
	done
fi
fi
}
recursion $cwd $2 $1 
