alias getpath='pwd | tr -d "\r\n" | pbcopy && pwd'
alias ls="ls -G"
alias la="ls -1GAC"
alias ll="ls -1GA"
alias lla="ls -la"
alias lla="ls -la | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"

alias up="cd ../"
alias cd..="cd .."
alias le="ls -oGAp"

