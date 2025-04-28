#!/usr/bin/env bash

letter_value() {
  case "$1" in
    [AEIOULNRST]) echo 1 ;;
    [DG])         echo 2 ;;
    [BCMP])       echo 3 ;;
    [FHVWY])      echo 4 ;;
    [K])          echo 5 ;;
    [JX])         echo 8 ;;
    [QZ])         echo 10 ;;
    *)            echo 0 ;;
  esac
}

  main () {
    local score=0
    local input=$(echo "$1" | tr '[:lower:]' '[:upper:]')
    
    (($# != 1)) && [[ -z "$1" ]] && echo "Usage: scrabble_score.sh <word>" >&2 && exit 1

    for ((i=0; i<${#input}; i++)); do
      letter=${input:i:1}
      value=$(letter_value "$letter")
      ((score+=value))
    done

    echo $score
  }
  main "$@"
