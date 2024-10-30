# View
function fish_prompt --description 'Write out the prompt'
  set_color -b cyan
  set_color black
  printf '%s@%s' $USER (prompt_hostname)

  set_color -b green
  set_color cyan
  printf ''

  set_color -b green
  set_color black
  printf '%s' (prompt_pwd)

  set_color -b yellow
  set_color green
  printf ''

  set_color -b yellow
  set_color black
  printf '%s' (__fish_git_prompt)

  set_color -b normal
  set_color yellow
  printf ''

  set_color normal
  printf '\n> '
end

# Greeting Message
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
  echo (echo -e "幸子「フフーン！今日も一日、ボクのために頑張ってくださいね！」\n春香「おはようございます、プロデューサーさん！」\nこのみ「さて、今日もやることがいっぱいね。一緒に頑張りましょ、プロデューサー！」\n智代子「あっ、プロデューサーさん、お帰りなさい！」" | LC_ALL=C sort -R | head -n 1)
end
