#!/bin/bash
function_hello() {
  echo "I am a demo for functions in shells"
#  exit 99 #message delivered 
}

function_hello

today() {
    echo -n "Today's date is: "
    date +"%A, %B %-d, %Y"
}
today
