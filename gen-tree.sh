#!/bin/bash

#######################################
############# CAIO COTTS ##############
## Comp1234 file structure generator ##
#######################################

set -e

mkdir -p comp1234/lab comp1234/assignments

cd comp1234/assignments

for i in {01..03}; do
    mkdir "assignment${i}"
done

for dir in */; do
    mkdir -p "${dir}assets/img/" "${dir}assets/css"
done

cd ../lab

mkdir practices exercises

for dir in */; do
    for i in {01..14}; do
        mkdir "${dir}wk${i}"
    done
done

echo Comp1234 file hierarchy created
