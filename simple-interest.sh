#!/bin/bash
# simple-interest.sh
# Calculates simple interest from user input.
# Formula: SI = (P * R * T) / 100

read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (% per annum): " rate
read -p "Enter the time period (in years): " time

# Validate that all inputs are positive numbers
re='^[0-9]+([.][0-9]+)?$'
for value in "$principal" "$rate" "$time"; do
    if ! [[ $value =~ $re ]]; then
        echo "Error: all inputs must be positive numbers." >&2
        exit 1
    fi
done

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "Principal       : $principal"
echo "Rate of interest: $rate %"
echo "Time period     : $time years"
echo "Simple interest : $interest"
echo "Total amount    : $total"
