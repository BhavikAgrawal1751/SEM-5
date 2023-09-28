echo "Enter a word or a sentence"
read userInput
lowerCaseInput=$(echo "$userInput" | tr '[:upper:]' '[:lower:]')
vowelCount=$(echo "$lowerCaseInput" | grep -o '[aeiou]' | wc -l)
echo "Number of vowels : $vowelCount"
