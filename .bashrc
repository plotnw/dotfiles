#
# ~/.bashrc
#

# If not running interactively, don't do anything

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

eval $(dircolors ~/.dircolors)
#if [ "$TERM" = "linux" ]; then
 # /bin/echo -e "
  #\e]P0003232
  #\e]P0003232
 # \e]P2343537
  #\e]P33edd20
 # \e]P4676a6c
 # \e]P5898d8f
 # \e]P6b1b5b9
 # \e]P7e1e2e4
  #\e]P82556db
  #\e]P9668e85
  #\e]PA95bc72
  #\e]PBc87993
  #\e]PC309a30
  #\e]PD5ca99a
  #\e]PE678ba2
  #\e]PF70934e
  #"
  # get rid of artifacts
  #clear
#fi
PS1='\[\e[0;38m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"
panda
export PS1="$PS1"
