# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# Prompt format
update_prompt() {
  local last_exit_code="$?"

  # Start with green color and working directory
  PS1="\[\e[0;32m\][\w]"

  if [ "$last_exit_code" -ne 0 ]; then
    # Color prompt sign ($) red, if latest command returned error
    PS1+="\[\e[0;31m\]"
  fi
  PS1+="\$ "

  # Reset color
  PS1+="\[\e[0m\]"
}
PROMPT_COMMAND=update_prompt
# TODO: Implement timing on last command if running for over 5 seconds

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

export EDITOR="/usr/bin/nvim"
export SUDO_EDITOR="/usr/bin/nvim"
# export VISUAL="~/.cargo/bin/neovide"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

alias lg='lazygit'
alias vim='nvim'

# Get the name of the distribution
os_name=$(cat /etc/os-release | awk -F '=' '/^NAME/{print $2}' | awk '{print $1}' | tr -d '"')

# Special handling of bat for Debian and Ubuntu

# Debian is commented out, because using Nix to install packages
# now and bat command doesn't have a stupid name anymore
if [ "$os_name" == "Ubuntu" ]; then
  alias cat='batcat -p'
# elif [ "$os_name" == "Debian" ]; then
#   alias cat='batcat -p'
#   alias ls='ls --color=auto'
else
  alias ls='ls --color=auto'
  alias cat='bat -p'
fi

alias rgf='rg --files | rg'
alias ..='cd ..'
alias ...='cd ../..'
alias zed='zeditor'

# Use bat for manpage
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"
export HYPRSHOT_DIR=/home/anssi/pictures/Screenshots

export PATH="$PATH:$HOME/.local/share/flatpak/exports/bin"
export PATH="$PATH:/var/lib/flatpak/exports/bin"
export PATH="$PATH:/usr/sbin"

eval "$(mise activate bash)"
