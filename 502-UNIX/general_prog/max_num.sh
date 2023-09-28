
# Get the three numbers from the user.
read -p "Enter the first number: " first_number
read -p "Enter the second number: " second_number
read -p "Enter the third number: " third_number

# Find the maximum of the three numbers.
if [[ "$first_number" -ge "$second_number" && "$first_number" -ge "$third_number" ]]; then
  maximum_number=$first_number
elif [[ "$second_number" -ge "$first_number" && "$second_number" -ge "$third_number" ]]; then
  maximum_number=$second_number
else
  maximum_number=$third_number
fi

# Print the maximum number.
echo "The maximum number is $maximum_number."
