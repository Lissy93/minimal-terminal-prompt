
RESET='\e[0m'
COL_USER_HOST='\e[96m'
COL_CURRENT_PATH='\e[90m'
COL_CURSOR='\e[96m'


parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="${COL_USER_HOST}\u @ \h ${COL_CURRENT_PATH}\w "
PS1+='$(parse_git_branch)'
PS1+="\n${COL_CURSOR}└─▶ "
PS1+="${RESET}"
