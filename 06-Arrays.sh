#!/bin/bash

FRUITS=("APPLE" "MANGO" "POMG")

echo "Firts value: ${FRUITS(0)}"

echo "Second value: ${FRUITS(1)}"

echo "Thirds value: ${FRUITS(2)}"

echo "ALL FRUITS: ${FRUITS(@)}"