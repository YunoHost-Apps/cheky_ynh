#!/bin/bash

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

# Execute a command as another user
# usage: exec_as USER COMMAND [ARG ...]
# Source : https://github.com/YunoHost-Apps/Experimental_helpers/tree/master/ynh_exec_as
exec_as() {
  local USER=$1
  shift 1

  if [[ $USER = $(whoami) ]]; then
    eval "$@"
  else
    sudo -u "$USER" "$@"
  fi
}

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
