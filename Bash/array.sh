#!/usr/local/bin/bash

#### decalaring array in bash
array_demo=(I am Nischay Singh Rathor)

##printing values
echo "Element at index 2 is =  ${array_demo[2]}"

##Printing all elements of array
echo "Printing all elments of a array = ${array_demo[*]}" ### Another way is ${array_demo[@]}

##Printing total elments in a array
echo "Toatal Number of elements in array is = ${#array_demo[*]}"

##Printing indexes of array
echo "Indexes of array is = ${!array_demo[*]}" ### or ${!array_demo[@]}

##Associative arrays have been introduced to Bash from Version 4.0 and they are useful entities to solve many problems using the hashing technique. In an associative array, we can use any text data as an array index

## Decalaring an Associative array
declare -A ass_array

ass_array=([name]="Nischay Rathor" [city]="Allahabad" [country]="India")
ass_array[hobby]="Linux, Music, Cricket"

## Listing all Array indexes 
echo "All indexes in assosciative array is = ${!ass_array[*]}"

### Listing all element in assosciative array
echo "Listing all elments of Associative array is = ${ass_array[*]}"

echo "Value of index name is ${ass_array[name]}"
