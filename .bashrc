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

#export LD_LIBRARY_PATH=/opt/cuda/lib64
export EDITOR=nvim
export VISUAL=$EDITOR
cd ${HOME}
exec fish

