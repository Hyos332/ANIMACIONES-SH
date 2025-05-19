#!/bin/bash

# carrera de buses
while true; do
    for i in {1..20}; do
        clear
        # bus 1
        printf "%${i}s" " " 
        echo "🚌"
        
        # el segundo bus que estara mas lento 
        printf "%$((i / 2))s" " " 
        echo "🚌"
        
        # aca se verificara si el bus 1  ha llegadoi a la meta
        if [ $i -eq 20 ]; then
            echo "el Bus 1 ganó la carrera"
            exit 0
        fi
        
        sleep 0.2
    done
done