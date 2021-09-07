#!/bin/bash

file=$1" | sed 's/\[_input.text]//'`
echo $file
awk 'match($0, /([a-zA-Z]+), ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' $1 > $1.txt

awk 'match($0, /(\w+), (\w+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < $1

awk 'match($0, /([[:alpha:]]+), ([[:alpha:]]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < $1
