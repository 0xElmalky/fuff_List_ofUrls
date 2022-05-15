#!/bin/bash
#
# code 3abeet bs 7lw :)
# AhmedElmalky
rm out_$1;
for x in $(cat $1)
do
    echo $x >> out_$1 ;
    ffuf -c -w /root/lists/list.txt -u  $x/FUZZ >> out_$1;
    echo "-----------------------------------------------------------------------" >> out_$1 ;
done

