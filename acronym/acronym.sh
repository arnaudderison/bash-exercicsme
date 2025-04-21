#!/usr/bin/env bash

main () {
  for item in "$@"; do
     input=${item//-/ }
     cleanInput=$(echo "$input" | tr -cd '[:alnum:] \n')
     
     for word in $cleanInput; do
      letter=${word:0:1}
      echo -n $(echo "$letter" | tr '[:lower:]' '[:upper:]')
     done
  done
}

main "$@"