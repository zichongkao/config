 export PS1='\[\e[1;32m\]\u@\h:\[\e[1;34m\]\w\[\e[1;32m\]${text}$\[\e[m\]'
 export EDITOR="vim"

 if [ -f ~/.bash_aliases ]; then
     . ~/.bash_aliases
 fi
