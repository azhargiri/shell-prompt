function fish_prompt --description 'Write out the prompt based on fish-bundled terlar prompt'
	set -l last_status $status

  set -l color_text FBFAF3 # 'semi-white'
  set -l bg_color_user 75507B # purple
  set -l bg_color_at 3465A4 # blue
  set -l bg_color_hostname 06989A # tosca green
  set -l bg_color_colon red
  set -l bg_color_pwd D3D7CF # light gray
  set -l color_arrow 585858 # dark gray
  set -l delimiter_char ""

  # User
  set_color -b $bg_color_user $color_text
  echo -n ' ' (whoami) ' '
  set_color normal

  set_color -b $bg_color_at $bg_color_user
  echo -n $delimiter_char
  set_color normal

  # @
  set_color -b $bg_color_at $color_text
  echo -n " @ "
  set_color normal

  set_color -b $bg_color_hostname $bg_color_at
  echo -n $delimiter_char
  set_color normal

  # Host
  set_color -b $bg_color_hostname $color_text
  echo -n ' ' (hostname -s) ' '
  set_color normal

  set_color -b $bg_color_colon $bg_color_hostname
  echo -n $delimiter_char
  set_color normal
  
  set_color -b $bg_color_colon $color_text
  echo -n ' : '
  set_color normal

  set_color -b $bg_color_pwd $bg_color_colon
  echo -n $delimiter_char
  set_color normal

  # PWD
  set_color -b $bg_color_pwd $color_text
  echo -n ' ' (prompt_pwd) ' '
  set_color normal

  set_color -b $color_arrow $bg_color_pwd
  echo -n $delimiter_char
  set_color normal

  set_color $color_arrow
  echo -n $delimiter_char
  set_color normal

  __terlar_git_prompt
  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '➤ '
  set_color normal
end
