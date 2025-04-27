#!/usr/bin/env bash

main () {
  local input=$(echo "$1" | tr -cd '[:alnum:] \n' | tr '[:upper:]' '[:lower:]')
  local alphabet="abcdefghijklmnopqrstuvwxyz"

  for ((i=0; i<${#alphabet}; i++)); do
    local letter=${alphabet:i:1}
    if [[ ! $input =~ $letter ]]; then
      echo "false"
      return
    fi
  done
  echo "true"
}

main "$@"

