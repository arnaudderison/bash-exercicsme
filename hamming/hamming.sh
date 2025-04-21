#!/usr/bin/env bash

main() {
  [[ "$#" -ne 2 ]] && echo "Usage: hamming.sh <string1> <string2>" >&2 && exit 1
  [[ ${#1} -ne ${#2} ]] && echo "strands must be of equal length" >&2 && exit 1
  
  diff=0
  for ((i = 0; i < ${#1}; i++)); do
    [[ "${1:i:1}" != "${2:i:1}" ]] && ((diff++))
  done

  echo "$diff"
}

main "$@"