function fish_prompt --description 'Write out the prompt based on fish-bundled terlar prompt'
	set -l last_status $status

  # User
  echo -n -e "\e[7;35m"
  echo -n ' ' (whoami) ' '
  echo -n -e "\e[0m"

  echo -n -e "\e[7;34m @ \e[0m"

  # Host
  echo -n -e "\e[7;36m"
  echo -n ' ' (hostname -s) ' '
  echo -n -e "\e[0m"

  echo -n -e '\e[7;31m : \e[0m'

  # PWD
  echo -n -e "\e[7;38;37m"
  echo -n ' ' (prompt_pwd) ' '
  echo -n -e "\e[0m"

  echo

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  echo -n '➤ '
  set_color normal
end
