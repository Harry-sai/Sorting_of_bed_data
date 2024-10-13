#!/bin/bash
# $1 : list of input files form seperated by space for rules 
# $2 : output file

echo $1 | tr ' ' '\n' | while read fname
do
    sort -k2 -k1 $fname
done >> $2
