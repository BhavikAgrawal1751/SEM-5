
# Get the number from the user.
read -p "Enter a number: " number

# Initialize the first two Fibonacci numbers.
a=0
b=1

# Print the first two Fibonacci numbers.
echo "$a"
echo "$b"

# Calculate and print the remaining Fibonacci numbers.
for ((i=2; i<=$number; i++)); do
  c=$((a + b))
  a=$b
  b=$c
  echo "$c"
done
