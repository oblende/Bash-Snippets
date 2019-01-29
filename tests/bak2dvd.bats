#!/bin/env bats

@test "Testing bak2dvd tool" {
   echo meme
}

@test "Check for latest version of bash-snippets on update" {
  if [[ "$(uname)" == "Linux" ]];then
  run bak2dvd update
  [ "$status" -eq 0 ]
  [ "$output" = "Bash-Snippets is already the latest version" ]
fi
}

@test "The -h option should print usage" {
  run bak2dvd -h
  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "Meme" ]
}



@test "Get the tools version with -v" {
  run bak2dvd -v
  [ "$status" -eq 0 ]
  result=$( echo $(meme -v) | grep -Eo "Version")
  [ "$result" = "Version" ]
}
