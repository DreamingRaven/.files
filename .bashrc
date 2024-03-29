#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# https://stackoverflow.com/questions/49630601/signing-commits-with-git-doesnt-ask-for-my-passphrase
export GPG_TTY=$(tty)

# start ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

export ELECTRON_TRASH=gio
#export LD_LIBRARY_PATH=/opt/cuda/lib64
export EDITOR=nvim
export VISUAL=$EDITOR
export BROWSER=firefox
# chromium has some messed up ways of setting itself as default inspite of export browser
# xdg-mime default firefox.desktop x-scheme-handler/https x-scheme-handler/http
cd ${HOME}
#exec zsh
exec fish

