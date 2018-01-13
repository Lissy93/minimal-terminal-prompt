# ------------------------------------------------------------------------------
#          FILE:  minimal-terminal-prompt.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file to show simple git status
#        AUTHOR:  Alicia Sykes (alicia@as93.net)
#       VERSION:  1.0.0
#    SCREENSHOT:  screenshot.gif
#          REPO:  https://github.com/Lissy93/minimal-terminal-prompt
#   DIRECT LINK:  https://raw.githubusercontent.com/Lissy93/minimal-terminal-prompt/master/minimal-terminal-prompt.zsh-theme
# ------------------------------------------------------------------------------



# color vars
eval col_gray='$FG[240]'
eval col_primary='$FG[032]'
eval col_diff='$FG[214]'
eval col_diff='$FG[214]'
eval col_same='$FG[034]'


if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$col_gray% ┌┄┈------------------------------------------------------
$col_gray% ├%{$reset_color%}$col_primary%~\
$(git_prompt_info) \
$col_primary%(?.%{$col_primary%}.%{$col_diff%})
└─▶%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'



# right prompt
if type "virtualenv_prompt_info" > /dev/null
then
	RPROMPT='$(virtualenv_prompt_info)$col_gray%n@%m%{$reset_color%} [$(date +%H:%M)]%'
else
	RPROMPT='$col_gray%n@%m%{$reset_color%} [$(date +%H:%M)]%%'
fi


# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$col_primary($col_same"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="$col_diff+%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$col_primary)%{$reset_color%}"
