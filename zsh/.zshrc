# basic
## use japanese
export LANG=ja_JP.UTF-8
## enable autoload
autoload -U compinit; compinit
autoload -Uz colors; colors
zstyle ":completion:*:default" menu select=1
## enable suggest
setopt correct
## alias
alias q="exit"
alias gcc="gcc -W -Wall"
alias ll="ls -al"
alias lf="ls -l"
alias cls="clear"
alias all_del_docker_images="docker images -aq | xargs docker rmi"
# path
## homebrew(For Apple Silicon)
eval $(/opt/homebrew/bin/brew shellenv)
# visual
## show directory
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
zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS}
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
## greeting message
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
