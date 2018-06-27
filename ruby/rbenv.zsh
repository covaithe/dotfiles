# on mac os x, readline is not installed by default and so irb does not do history.
# See https://paulschreiber.com/blog/2015/07/04/howto-make-readline-and-history-work-with-irb-and-rails-console-on-os-x-yosemite/
export RUBY_CONFIGURE_OPTS="--with-readline-dir=/usr/local"

export PATH="/Users/gfleming/.rbenv/shims:${PATH}"
source "/usr/local/Cellar/rbenv/1.1.1/completions/rbenv.zsh"
rbenv rehash 2>/dev/null
rbenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval `rbenv "sh-$command" "$@"`;;
  *)
    command rbenv "$command" "$@";;
  esac
}
