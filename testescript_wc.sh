#!/bin/bash

la=wc_check

# rm $la

echo $0 >> $la
date >> $la
echo -e '\n' >> $la
echo "" >> $la

cat $la

wc -l $la

# rm $la

