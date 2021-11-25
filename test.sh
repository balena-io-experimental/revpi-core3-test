#!/bin/bash

ret=0;

./piControl/piTest/piTest -w O_1,1
sleep 1
res=$(./piControl/piTest/piTest -1r I_1)

if [[ "$res" != "Bit value: 1" ]]; then
        echo "TEST 1: Failed!"
        ret=1;
fi;

./piControl/piTest/piTest -w O_1,0
sleep 1
res=$(./piControl/piTest/piTest -1r I_1)

if [[ "$res" != "Bit value: 0" ]]; then
        echo "TEST 2: Failed!"
        ret=1;
fi;

if [ $ret -eq 0 ]; then
        echo "TEST PASSED"
else
        echo "TEST FAILED"
fi

while true; do
        sleep 1
done
