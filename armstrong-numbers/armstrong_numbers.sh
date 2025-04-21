#!/usr/bin/env bash

main() {
  local number=$1
  local sum=0
  local length=${#number}
  local digit

  (($# != 1)) && echo "Usage: armstrong_numbers.sh <number>" >&2 && exit 1
  [[ ! $number =~ ^[0-9]+$ ]] && echo "Input must be a non-negative integer" >&2 && exit 1

  for ((i=0; i<length; i++)); do
    digit=${number:i:1}
    ((sum+=digit**length))
  done

  ((sum == number)) && echo "true" || echo "false"
}

main "$@"