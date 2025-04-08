#!/bin/bash

while true; do
    for i in {1..20}; do
        clear
        printf "%${i}s" " " 
        echo "<(' )"       
        sleep 0.2
    done
done