#!/bin/bash
list=`find -type f -name "*.c" -o -name "*.h" -o -name "*.cpp"`
for i in "$list"
do
./astyle --style=allman --indent=spaces=4 --indent-preproc-block --pad-oper --pad-header --unpad-paren --suffix=none --align-pointer=name --lineend=linux --convert-tabs $i
done