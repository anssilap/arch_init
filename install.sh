#!/bin/sh
set -e

# Give people a chance to retry running the installation
trap 'echo "Arch init failed! You can retry by running: source ~/.local/share/arch_init/install.sh"' ERR

# Install everything
for f in ~/.local/share/arch_init/install/*.sh; do
  echo -e "\nRunning installer: $f"
  source "$f"
done

# Ensure locate is up to date now that everything has been installed
# sudo updatedb

gum confirm "Reboot to apply all settings?" && reboot
