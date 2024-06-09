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
## zlib
set -gx LDFLAGS "-L/usr/local/opt/zlib/lib"
set -gx CPPFLAGS "-I/usr/local/opt/zlib/include"
## EDITOR
set -Ux EDITOR nvim
