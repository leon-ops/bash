#!/bin/bash

#INPUT=www3.lst
INPUT=$1
i=0
while read -r line 
do
#       printf "$line;"
        #printf("%s;", line)
        echo -n $line ";" |tr -d "\n" >> o
        ((i++))
        echo $i
        if [[ $((i%4)) == 0 ]]
        then printf "\n">>o
        fi
