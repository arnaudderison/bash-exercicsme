#!/usr/bin/env bash

  main () {
    result=""

    if [ "$#" -ne 1 ]; then
      exit 1
    fi

    if (( $1 % 3 == 0 )); then
      result+="Pling"
    fi

    if (( $1 % 5 == 0 )); then
      result+="Plang"
    fi

    if (( $1 % 7 == 0 )); then
      result+="Plong"
    fi

    if [ -n "$result" ]; then
      echo "$result"
    else
      echo "$1"
    fi
  }

  main "$@"

