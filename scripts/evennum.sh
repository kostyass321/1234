#!/bin/bash

echo "Введите число:"
read number

if [ $((number % 2)) -eq 0 ]; then
    echo "Число $number является четным."
else
    echo "Число $number является нечетным."
fi