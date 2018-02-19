# vim: set ft=sh:
export PATH="$HOME/.bin:$PATH";
export EDITOR=vim

USERHOME=~

# root
if [ ! -z $MYHOME ]; then
  USERHOME=$MYHOME;
  if [ -f /etc/profile ]; then
    . /etc/profile
  fi
fi

# nice colours
if dircolors > /dev/null 2>&1; then
    eval `dircolors $USERHOME/.dir_colors`
fi

set -o vi

my_prompt="$my_prompt\[\e[0;32m\]\u\[\e[m\]"
my_prompt="$my_prompt@\[\e[0;35m\]\h\[\e[m\]"
my_prompt="$my_prompt \[\e[0;34m\]\w\[\e[m\]"

if [ ! -z $MYHOME ]; then
  my_prompt="$my_prompt \[\e[0;31m\]\$\[\e[m\] "
else
  my_prompt="$my_prompt \[\e[0;33m\]\$\[\e[m\] "
fi

PS1=$my_prompt

export PROMPT_COMMAND='echo -ne "\033]0;$USER@$HOSTNAME: ${PWD/#$HOME/~}\007"'

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias p='ps aux'
alias pp='ps fawwux'
alias duu='du -h --max-depth=1'
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"
alias dotfilesup='cd ~/.dot-simple && git pull origin master && source install.sh'

# go sudo root and keep profile
alias root='sudo MYHOME=~ SSH_CLIENT="$SSH_CLIENT" bash --rcfile ~/.bashrc'
