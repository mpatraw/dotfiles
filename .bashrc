#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Remap CapsLock to Ctrl.
setxkbmap -option ctrl:nocaps

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GOPATH=~/devel/go
export PATH=$PATH:~/bin
export PATH=$PATH:$GOPATH/go
export PATH=$PATH:/opt/android-sdk/tools
export PATH=$PATH:/opt/android-sdk/platform-tools
export PATH=$PATH:/opt/android-sdk/build-tools
