# 基本設定
## 日本語を使用する
export LANG=ja_JP.UTF-8

## エイリアスの設定
alias q 'exit'
alias py 'python3'
alias n 'nano'
alias gcc 'gcc -W -Wall'
alias ll 'ls -al'
alias lf 'ls -l'
alias cls 'clear'
alias all_del_docker_images 'docker images -aq | xargs docker rmi'

# PATHの設定
## open ssl
set -x RUBY_CONFIGURE_OPTS --with-openssl-dir=(brew --prefix openssl@1.1)

## rbven
status --is-interactive; and source (rbenv init -|psub)

## Golang
set -x GOPATH $HOME/.go

## Android
set -x ANDROID_HOME $HOME/Library/Android/sdk

## bison
set -gx LDFLAGS "-L/usr/local/opt/bison/lib"

## zlib
set -gx LDFLAGS "-L/usr/local/opt/zlib/lib"
set -gx CPPFLAGS "-I/usr/local/opt/zlib/include"

# 見た目の設定
function fish_prompt --description 'Write out the prompt'
  set_color -b cyan
  set_color white
  printf '%s@%s' $USER (prompt_hostname)

  set_color -b green
  set_color cyan
  printf ''

  set_color -b green
  set_color white
  printf '%s' (prompt_pwd)

  set_color -b yellow
  set_color green
  printf ''

  set_color -b yellow
  set_color white
  printf '%s' (__fish_git_prompt)

  set_color -b normal
  set_color yellow
  printf ''

  set_color normal
  printf '\n> '
end

# 起動時にメッセージを表示する
function fish_greeting
  echo ----------
  echo OSType:         (uname)
  switch (uname)
  case Darwin
    # Mac
    echo (sw_vers) -e
    ;;
  case Linux
    # Linux
    echo (lsb_release -a)
    ;;
  end
  echo ShellVersion:   ($SHELL --version)
  echo ----------
  echo (echo -e "幸子「フフーン！今日も一日、ボクのために頑張ってくださいね！」\n春香「おはようございます、プロデューサーさん！」\nこのみ「さて、今日もやることがいっぱいね。一緒に頑張りましょ、プロデューサー！」\n智代子「あっ、プロデューサーさん、お帰りなさい！」" | sort -R | head -n 1)
end

source $HOME/.phpbrew/phpbrew.fish
