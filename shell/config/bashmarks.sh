# initialize bashmarks


# set default bashmarks path
if [ -z "$BASHMARKS_PATH" ]; then
  export BASHMARKS_PATH="$HOME/.local/bin/bashmarks.sh"
fi

if [ -f $BASHMARKS_PATH ]; then
  source "$BASHMARKS_PATH"
else
  function install_bashmarks() {
    read -p "Would you like to install Bashmarks? [Yy/Nn] " -n 1 -r
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        export TMP_BASHMARKS="/tmp/src/bashmarks"
        git clone git://github.com/alexparker/bashmarks.git $TMP_BASHMARKS && cd $TMP_BASHMARKS && make install && source "$BASHMARKS_PATH"
    else
        echo "Ok, if you wish to install later, run the install_bashmarks command"
    fi
  }
  install_bashmarks
fi

