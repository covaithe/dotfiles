alias reload!='. ~/.zshrc'
alias ls='ls -F'
alias z='zeus'
if [[ `uname -s` == 'Darwin' ]] ; then
  alias vi="mvim -v"
  alias vim="mvim -v"
fi 
alias bakes='bundle exec rake `bundle exec rake -P | sed -n -e "/rake/p" | cut -c 6- | selecta`'
