#!/bin/bash

## Text Styles
RESET='\[\e[0m\]' # What color will comand outputs be in
BOLD='\[\e[1m\]' # BOLD

## Config
SHOW_GIT=true

## If this is a valid git repo, echo the current branch name
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

## Build-up what will be the final PS1 string
set_bash_prompt(){
  PS1="${RESET}\n"
  PS1+="@\u ➜ ${BOLD}\w ${RESET}"

  if [ "$SHOW_GIT" = true ] && [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = true ] ; then
    PS1+="$(parse_git_branch)"
  fi

  PS1+="\n└─▶"
  PS1+="${RESET} \$ "
}

## Done, now just set the PS1 prompt :)
PROMPT_COMMAND=set_bash_prompt
