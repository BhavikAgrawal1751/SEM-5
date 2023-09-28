#!/bin/bash
#------case sentive wala
# read -p "Enter a string: " string
# if [[ $(rev <<< "$string") == "$string" ]]; then
#     echo "Palindrome word"
# else 
#     echo "not Palindrome word"
# fi

# Get the input from the user.
read -p "Enter a string: " string

# Convert the input to lowercase.
lower_case_string=$(echo "$string" | tr '[:upper:]' '[:lower:]')

# Reverse the lowercase string.
reversed_string=$(rev <<< "$lower_case_string")

# Check if the lowercase string is a palindrome.
if [[ "$lower_case_string" == "$reversed_string" ]]; then
  echo "$string is a palindrome."
else
  echo "$string is not a palindrome."
fi
