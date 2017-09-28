# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export TERM="xterm-256color"

# added by Anaconda3 4.3.1 installer
export PATH="/Users/adamw/anaconda/bin:$PATH"

export PYTHONPATH="/Users/adamw/Code/nodice73/powerwave"

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth
export HISTCONTROL=erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
shopt -s histappend # append to history, don't overwrite it

# save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Comment in the above and uncomment this below for a color prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\[\033[01;32m\]\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
#    ;;
#*)
#    ;;
#esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

