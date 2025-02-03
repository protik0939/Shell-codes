#!/bin/bash

echo "Enter your age:"
read age

if [ $age -ge 18 ]; then
    echo "You can give your vote."
else
    years_left=$((18 - age))
    echo "You can vote after $years_left years later."
fi
