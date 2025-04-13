read -p "Enter a word to search for: " search_word

read -p "Enter the filename to search in: " filename

if [ ! -f "$filename" ]; then
  
   echo "Error: file '$filename' does not exist'."
   exit 1
fi

echo "Searching for '$search_word' in '$filename':"

grep -n "$search_word" "$filename"

if [ $? -eq 0 ]; then

  echo " search is compleated"
else
  echo "Matches not found: $filename"
fi
