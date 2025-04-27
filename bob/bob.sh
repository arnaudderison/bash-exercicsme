#!/usr/bin/env bash

main () {
  local input="$1"
  input=$(echo "$input" | sed 's/[[:space:]]*$//')

  if [[ "$input" =~ \?$ ]]; then
    [[ "$input" =~ ^\?+$ ]] && echo "Sure." && exit
    [[ "$input" =~ [A-Z] ]] && [[ "$input" =~ ^[A-Z[:space:][:punct:]]+$ ]] && echo "Calm down, I know what I'm doing!" && exit
    echo "Sure." && exit
  fi

  [[ -z "$input" || "$input" =~ ^[[:space:]]*$ ]] && echo "Fine. Be that way!" && exit
  [[ "$input" =~ [A-Z] ]] && [[ "$input" =~ ^[A-Z0-9[:space:][:punct:]]*$ ]] && echo "Whoa, chill out!" && exit

  echo "Whatever." && exit 
}

main "$@"
