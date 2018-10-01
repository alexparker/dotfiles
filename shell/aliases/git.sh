#alias gs="git status -sb"
#alias ga="git fuzzy add"
#alias ge="git fuzzy edit"
#alias gf="git fetch"
#alias gr="git rebase"
#alias gb="git branch"
#alias co="git checkout"
alias gc="git commit"
#alias gp="git pull"

alias pr="hub pull-request"
function label {
  if [[ ! -a ".git" ]]; then
    echo "Not a git repository";
    return
  fi

  if [[ -z $1 ]]; then
    echo 'Missing label';
    echo 'Usage: `label <label_name>`';
    return;
  fi

  branch="`git branch | grep \*`"
  label_name=$1
  label_file=.git/labels/$label_name

  if [[ $1 == "-e" ]]; then
    $EDITOR .git/labels/;
    return;
  fi

  if [[ ! -d ".git/labels" ]]; then
    mkdir .git/labels;
  fi

  if [[ -f $label_file ]]; then
    exists="`cat $label_file|grep $branch`";
  else
    exists=""
  fi


  if [[ -z $exists ]]; then
    echo $branch >> .git/labels/$label_name
    echo "Added $branch to label: $label_name"
  else
    echo "Branch $branch is already on label: $label_name"
  fi
}



#alias gitchmodx="git diff --summary | grep --color 'mode change 100755 => 100644' | cut -d' ' -f7- | xargs chmod +x"
#alias gitchmod="git diff --summary | grep --color 'mode change 100644 => 100755' | cut -d' ' -f7- | xargs chmod -x"
