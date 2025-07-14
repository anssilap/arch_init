echo Start for all environments

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
  wget curl unzip man whois vim gum
  # wget curl unzip inetutils \
  # fd eza fzf ripgrep zoxide bat \
  # wl-clipboard fastfetch btop \
  # man tldr less whois plocate \
  # bash-completion ghostty-git
