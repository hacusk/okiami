# 基本設定
## 日本語を使用する
export LANG=ja_JP.UTF-8

## 自動補完を有効にする
autoload -U compinit; compinit
autoload -Uz colors; colors
zstyle ":completion:*:default" menu select=1

## サジェストする
setopt correct

## エイリアスの設定
alias q="exit"
alias py="python3"
alias n="nano"
alias gcc="gcc -W -Wall"
alias ll="ls -al"
alias lf="ls -l"
alias cls="clear"
alias npm_install_g="npm ls -g --depth=0"
alias npm_install="npm ls --depth=0"
alias all_del_docker_images="docker images -aq | xargs docker rmi"

# 見た目の設定
## ディレクトリ表示する
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%b'
zstyle ':vcs_info:*' actionformats '%b'
precmd() { vcs_info }
PROMPT='%K{004}%F{255}%B%n@%m%b%f%k%K{002}%F{004}%f%~%k%K{003}%F{002}%f${vcs_info_msg_0_}%k%F{003}%f
$ '

## ls
export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS="di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46"

## 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}

## lsがカラー表示になるようエイリアスを設定
case "${OSTYPE}" in
darwin*)
  # Mac
  alias ls="ls -GF"
  ;;
linux*)
  # Linux
  alias ls="ls -F --color"
  ;;
esac

# PATHの設定
## homebrew
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
alias brew="env PATH=${PATH/\/Users\/${USER}\/\.pyenv\/shims:/} brew"

## git
export PATH="/usr/local/git/bin:$PATH"

## rbven
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

## pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

## nodebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"

## jEnv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

## Golnag
export GOPATH="$HOME/.go"

## postgresql
export PATH="/usr/local/opt/postgresql@10/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/postgresql@10/lib"
export CPPFLAGS="-I/usr/local/opt/postgresql@10/include"
export PKG_CONFIG_PATH="/usr/local/opt/postgresql@10/lib/pkgconfig"

## Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$HOME/Library/Android/sdk/platform-tools:$PATH"

## OpenSSL
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# 起動時にメッセージを表示する
echo "----------"
echo "OSType:         ${OSTYPE}"
case "${OSTYPE}" in
darwin*)
  # Mac
  echo "$(sw_vers)" -e
  ;;
linux*)
  # Linux
  echo "$(lsb_release -a)"
  ;;
esac
echo "ShellVersion:   $($SHELL --version)"
echo "----------"
echo "$(echo -e "幸子「フフーン！今日も一日、ボクのために頑張ってくださいね！」\n春香「おはようございます、プロデューサーさん！」\nこのみ「さて、今日もやることがいっぱいね。一緒に頑張りましょ、プロデューサー！」\n智代子「あっ、プロデューサーさん、お帰りなさい！」" | sort -R | head -n 1)"
