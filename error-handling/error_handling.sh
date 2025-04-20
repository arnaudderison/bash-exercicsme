#!/usr/bin/env bash

  main () {
    if [ "$#" -eq 1 ]; then
      echo "Hello, $1"
    else
      echo "Usage: error_handling.sh <person>" >&2
      exit 1
    fi
  }

  main "$@"

