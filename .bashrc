#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Remap CapsLock to Ctrl.
setxkbmap -option ctrl:nocaps

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export GOPATH=~/devel
export PATH=$PATH:$GOPATH/bin:~/tools
export PATH=$PATH:/opt/android-sdk/tools
export PATH=$PATH:/opt/android-sdk/platform-tools
export PATH=$PATH:/opt/android-sdk/build-tools

