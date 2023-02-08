#!/bin/bash

## Define all the colors
COL_USER_HOST='\[\e[35m\]' # The color of 'user@host.ext'
COL_CURSOR='\[\e[35m\]' # The color of the trailing cursor arrow
COL_CURRENT_PATH='\[\e[37m\]' # The color of the current directory full path
COL_GIT_STATUS_CLEAN='\[\e[93m\]' # Color of fresh git branch name, with NO changes
COL_GIT_STATUS_CHANGES='\[\e[92m\]' # Color of git branch, affter its diverged from remote

## Text Styles
RESET='\[\e[0m\]' # What color will comand outputs be in
BOLD='\[\e[1m\]' # BOLD

## Config
SHOW_GIT=true

## If this is a valid git repo, echo the current branch name
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

## Echos what color the git branch should be (depending on changes)
parse_git_changes() {
  if [[ $(git status --porcelain) ]]; then
    echo ${COL_GIT_STATUS_CLEAN}
  else
    echo ${COL_GIT_STATUS_CHANGES}
  fi
}

## Build-up what will be the final PS1 string
set_bash_prompt(){
  PS1="${RESET}"
  PS1+="${BOLD}${COL_USER_HOST}\u @ \h ${RESET}${COL_CURRENT_PATH}\w "

  if [ "$SHOW_GIT" = true ] && [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = true ] ; then
    PS1+="$(parse_git_changes)"
    PS1+="$(parse_git_branch)"
  fi

  PS1+="\n${COL_CURSOR}└─▶ "
  PS1+="${RESET}"
}

## Done, now just set the PS1 prompt :)
PROMPT_COMMAND=set_bash_prompt
