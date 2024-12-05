#!/usr/bin/env bash

# Define the file name
FILE="main.tf"

# Loop 150 times
for i in {1..150}
do
  # Append the resource block with the iteration number
  echo "resource \"random_pet\" \"pet$i\" {" >> $FILE
  echo "  length = 5" >> $FILE
  echo "}" >> $FILE
  echo "" >> $FILE

  # Add the changes to Git
  git add $FILE

  # Commit the changes
  git commit -m "Add random_pet resource pet$i"

done

echo "Appended 150 random_pet resources to $FILE."