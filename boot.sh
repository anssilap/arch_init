#!/bin/sh
# This should be runnable remotely with:
# `wget -qO- https://ansslap.com/arch_init | bash`
pacman -Q git &>/dev/null || sudo pacman -Sy --noconfirm --needed git
echo -e "\nCloning Arch init repository..."
rm -rf ~/.local/share/arch_init/
git clone https://github.com/anssilap/arch_init.git ~/.local/share/arch_init >/dev/null

# Use custom branch if instructed
if [[ -n "$ARCH_INIT_REF" ]]; then
  echo -e "\eUsing branch: $ARCH_INIT_REF"
  cd ~/.local/share/arch_init
  git fetch origin "${ARCH_INIT_REF}" && git checkout "${ARCH_INIT_REF}"
  cd -
fi
echo -e "\nInstallation starting..."
source ~/.local/share/arch_init/install.sh
