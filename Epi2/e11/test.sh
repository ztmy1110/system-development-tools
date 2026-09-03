#!/bin/bash

sum=0

for i in $(seq 1 10000); do
    sum=$((sum + i))
done

echo $sum
