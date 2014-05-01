# Manage color
if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
        export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
        export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
        tput sgr0
        if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
                BLACK=$(tput setaf 232)
                MAGENTA=$(tput setaf 201)
                ORANGE=$(tput setaf 202)
                GREEN=$(tput setaf 76)
                PURPLE=$(tput setaf 99)
                WHITE=$(tput setaf 255)
                RED=$(tput setaf 160)
                TEAL=$(tput setaf 51)
        else
                BLACK=$(tput setaf 0)
                MAGENTA=$(tput setaf 5)
                RED=$(tput setaf 1)
                GREEN=$(tput setaf 2)
                BLUE=$(tput setaf 4)
                WHITE=$(tput setaf 7)
        fi
        BOLD=$(tput bold)
        RESET=$(tput sgr0)
else
        BLACK="\033[01;30m"
        RED="\033[0;31m"
        PURPLE="\033[0;34m"
        MAGENTA="\033[1;31m"
        ORANGE="\033[1;33m"
        GREEN="\033[1;32m"
        PURPLE="\033[1;35m"
        TEAL="\033[0;36m"
        WHITE="\033[1;37m"
        BOLD=""
        RESET="\033[m"
fi

export BLACK
export MAGENTA
export ORANGE
export GREEN
export PURPLE
export WHITE
export BOLD
export RESET

# Git branch details
function parse_git_dirty() {
  [[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}
function parse_git_branch() {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1)$(parse_git_dirty)/"
}

export LABEL="\h::"
export LABEL_COLOR=$GREEN

if [ "$ENV_LABEL" ]; then
  LABEL=$ENV_LABEL
fi

if [ "$ENV_COLOR" ]; then
  LABEL_COLOR=$ENV_COLOR
fi

export PS1="\n\[$LABEL_COLOR\][$LABEL] \n"
export PS1="$PS1\[$RED\]\u\[$RESET\] \[$PURPLE\]in \[$TEAL\]\w\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]\n\[$GREEN\]⇢  \[$WHITE\]"

