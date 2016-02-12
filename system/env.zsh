export EDITOR='vim'

if [[ `uname -s` == 'Darwin' ]] ; then
  export EDITOR='mvim -v'
fi
#export CC='/usr/bin/gcc'

# Used for autojump
if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi
