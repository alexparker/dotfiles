alias gs="git status -sb"
alias ga="git fuzzy add"
alias ge="git fuzzy edit"
alias gf="git fetch"
alias gr="git rebase"
alias gb="git branch"
alias co="git checkout"
alias gc="git commit"
alias gp="git pull"

# Git checkout fuzzy matching
alias gco='git branch --all | sed -e "/remotes\/origin\/HEAD/d" -e "s/remotes\/origin\/\(.*\)/\1 `echo -e \"\\033[0;36m\"`\#origin`echo -e \"\\033[m\"`/" | selecta | xargs git checkout'

alias pr="hub pull-request"

alias gitchmodx="git diff --summary | grep --color 'mode change 100755 => 100644' | cut -d' ' -f7- | xargs chmod +x"
alias gitchmod="git diff --summary | grep --color 'mode change 100644 => 100755' | cut -d' ' -f7- | xargs chmod -x"
