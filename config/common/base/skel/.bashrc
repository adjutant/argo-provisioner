[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias ll='ls --color=auto -lh'
alias la='ls --color=auto -A'
alias lla='ls --color=auto -lhA'
alias all='ls --color=auto -lhA'

alias ..="cd .."
alias ...="cd ../.."

alias grep='grep --color=auto'
alias ping='ping -c 5'
alias date='date +"%A, %B %d, %r"'

alias nano='nano -w'

alias rm='rm -Iv'
alias cp='cp -iv'
alias rsync='rsync -v'
alias chown='chown -c --preserve-root'
alias chmod='chmod -c --preserve-root'
alias chgrp='chgrp -c --preserve-root'

alias sudo='sudo '

# Color PS1
# 31 red      35 pink 
# 32 green    36 cyan 
# 33 yellow   37 white 
# 34 blue
#  0 regular   1 bold
# 0m color reset

# PS1
if [ $UID = 0 ]; 
  then
PS1='\[\e[1;32m\]:: \[\e[1;37m\]You are \[\e[1;31m\]ROOT\
\[\e[1;37m\] AT \[\e[1;31m\]\h\[\e[1;37m\]:\[\e[1;34m\]\w \
\[\e[1;32m\]{BE CAREFUL}\n\[\e[1;31m\]\$\[\e[0m\] '
  else
PS1='\[\e[0;32m\]:: \[\e[0;37m\]You are \[\e[0;31m\]\u\
\[\e[0;37m\] AT \[\e[0;31m\]\h\[\e[0;37m\]:\[\e[1;34m\]\w\
\n\[\e[0;32m\]\$\[\e[0m\] '
fi    

export EDITOR="nano" 
export PYTHONSTARTUP="${HOME}/.pyrc"

complete -cf sudo
complete -cf man
