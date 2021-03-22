#!/bin/bash

target=date -d "$1" +%s
now=date +%s
delta=$(($target-$now))
blocks=echo "$delta/$2" | bc
targetblock=$(($3+$blocks))

echo "Target timestamp=$target"
echo "Now=$now"
echo "Delta=$delta"
echo "Blocks=$blocks"
echo "Target block=$targetblock"
