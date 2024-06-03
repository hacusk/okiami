## Use Japanese
export LANG=ja_JP.UTF-8
## alias
alias q 'exit'
alias gcc 'gcc -W -Wall'
alias cat 'bat'
alias all_del_docker_images 'docker images -aq | xargs docker rmi'
# PATH
if status is-interactive
  # Commands to run in interactive sessions can go here
  ## homebrew
  eval (/opt/homebrew/bin/brew shellenv)
end
## Golang
set -x GOPATH $HOME/.go
## bison
set -gx LDFLAGS "-L/usr/local/opt/bison/lib"
## zlib
set -gx LDFLAGS "-L/usr/local/opt/zlib/lib"
set -gx CPPFLAGS "-I/usr/local/opt/zlib/include"
## volta
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
## mysql-client
set -gx LDFLAGS "-L/opt/homebrew/opt/mysql-client/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/mysql-client/include"
# Wasmer
export WASMER_DIR="/Users/hacusk/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"
## EDITOR
set -Ux EDITOR nvim
