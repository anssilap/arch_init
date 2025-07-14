# This file contains scripts executed in all environments

# Base-devel is needed for yay
sudo pacman -S --needed --noconfirm base-devel

# Remove yay yay repo in tmp if it exists
if [ -d /tmp/yay-bin ]; then
  rm -rf yay-bin
fi

# Install yay
if ! command -v yay &>/dev/null; then
  cd /tmp
  git clone https://aur.archlinux.org/yay-bin.git
  cd yay-bin
  makepkg -si --noconfirm
  cd -
  rm -rf yay-bin
  cd ~
fi

# These are the programs that will be installed in all cases
yay -S --noconfirm --needed \
  wget curl unzip man whois gum bat man-db lazygit fd \
  ripgrep btop gdu less fzf mise \

# Neovim + dependencies
yay -S --noconfirm --needed \
  neovim luarocks tree-sitter

# Installed for non-wsl
# hyprland hyprpicker hyprshot hypridle polkit-gnome hyprland-qtutils
# xdg-desktop-portal-hyprland xdg-desktop-portal-gtk brave-bin
# ghostty-git waybar hyprlock wl-clipboard bitwarden gnome-keyring
# visual-studio-code-bin mako
# otf-font-awesome ttf-jetbrains-mono-nerd ttf-martian-mono-nerd

# Installed only for desktop
# rocm-smi-lib proton-vpn-gtk-app nfs-utils steam

# Not sure if needed
# pavucontrol lua51 xclip libsecret flatpak
# xdg-desktop-portal-kde kde-cli-tools
# fastfetch inetutils astyle

# Might change to something else
# rofi-wayland hyprpaper whatsapp ksnip

# Programs to check if they are useful
# zen-browser-bin eza tldr zoxide bash-completion plocate wofi swaybg

# Webapps to install
# proton apps (mail, drive, vpn)
