#!/bin/sh

# This script will copy and/or make symbolic links to configuration files
mkdir -p ~/.config
mkdir -p ~/.local/bin

rm ~/.bashrc 2> /dev/null
ln -s $(pwd)/.bashrc ~/.bashrc

rm -rf ~/.config/hypr 2> /dev/null
ln -s $(pwd)/hypr ~/.config/hypr

rm -rf ~/.config/waybar
ln -s $(pwd)/waybar ~/.config/waybar

rm -rf ~/.config/btop 2> /dev/null
ln -s $(pwd)/btop ~/.config/btop

rm -rf ~/.config/nvim
ln -s $(pwd)/nvim ~/.config/nvim

rm -rf ~/.config/lazygit
ln -s $(pwd)/lazygit ~/.config/lazygit

rm ~/.config/dosbox/dosbox.conf 2> /dev/null
mkdir -p ~/.config/dosbox
ln -s $(pwd)/dosbox/dosbox.conf ~/.config/dosbox/dosbox.conf

rm ~/.config/Code/User/settings.json 2> /dev/null
mkdir -p ~/.config/Code/User
ln -s $(pwd)/code/User/settings.json ~/.config/Code/User/settings.json
rm ~/.config/Code/User/keybindings.json 2> /dev/null
ln -s $(pwd)/code/User/keybindings.json ~/.config/Code/User/keybindings.json

rm -rf ~/.config/ghostty
ln -s $(pwd)/ghostty ~/.config/ghostty

mkdir -p ~/.config/bat
rm -rf ~/.config/bat
ln -s $(pwd)/bat ~/.config/bat
if command -v batcat 2>&1 >/dev/null
then
    batcat cache --build 2>&1 >/dev/null
else
    bat cache --build 2>&1 >/dev/null
fi

# rm ~/.bash_profile 2> /dev/null
# ln -s $(pwd)/.bash_profile ~/.bash_profile

# rm ~/.inputrc 2> /dev/null
# ln -s $(pwd)/.inputrc ~/.inputrc

# rm ~/.gitconfig 2> /dev/null
# ln -s $(pwd)/.gitconfig ~/.gitconfig

# rm ~/.zshrc 2> /dev/null
# ln -s $(pwd)/.zshrc ~/.zshrc

# rm -rf ~/.config/wezterm 2> /dev/null
# ln -s $(pwd)/wezterm ~/.config/wezterm

# rm -rf ~/.config/wofi 2> /dev/null
# ln -s $(pwd)/wofi ~/.config/wofi

# mkdir -p ~/.emacs.d/themes
# rm ~/.emacs
# ln -s $(pwd)/.emacs ~/.emacs

# Will fix keyboard repeat rate after plugging/unplugging new keyboard
# Is this needed anymore, since not using i3 much anymore?
# rm ~/.local/bin/fix_keyboard
# ln -s $(pwd)/fix_keyboard ~/.local/bin/fix_keyboard

# i3 locking script
# rm ~/.local/bin/lock_screen
# ln -s $(pwd)/lock_screen ~/.local/bin/lock_screen

# rm -rf ~/.config/nix
# ln -s $(pwd)/nix ~/.config/nix

# rm -rf ~/.config/pragtical
# ln -s $(pwd)/pragtical ~/.config/pragtical

# rm -rf ~/.config/lite-xl
# ln -s $(pwd)/lite-xl ~/.config/lite-xl

# rm ~/.config/zed/settings.json 2> /dev/null
# mkdir -p ~/.config/zed
# ln -s $(pwd)/zed/settings.json ~/.config/zed/settings.json
# rm ~/.config/zed/keymap.json 2> /dev/null
# ln -s $(pwd)/zed/keymap.json ~/.config/zed/keymap.json
# rm ~/.config/zed/tasks.json 2> /dev/null
# ln -s $(pwd)/zed/tasks.json ~/.config/zed/tasks.json

# rm -rf ~/.config/i3
# ln -s $(pwd)/i3 ~/.config/i3

# rm -rf ~/.config/sway
# ln -s $(pwd)/sway ~/.config/sway

# rm -rf ~/.omnisharp
# ln -s $(pwd)/.omnisharp ~/.omnisharp

# rm -rf ~/.config/micro
# ln -s $(pwd)/micro ~/.config/micro

# rm -rf ~/.config/alacritty
# ln -s $(pwd)/alacritty ~/.config/alacritty

# rm -rf ~/.config/i3status-rust
# ln -s $(pwd)/i3status-rust ~/.config/i3status-rust

# rm ~/.tmux.conf
# ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf
# rm -rf ~/.config/tmux
# ln -s $(pwd)/tmux ~/.config/tmux

# rm -rf ~/.config/betterlockscreen
# ln -s $(pwd)/betterlockscreen ~/.config/betterlockscreen

# Disable mouse acceleration
# if [ -f "/etc/X11/xorg.conf.d/40-mouse.conf" ]; then
#     sudo rm /etc/X11/xorg.conf.d/40-mouse.conf
# fi
# sudo mkdir -p /etc/X11/xorg.conf.d/40-mouse.conf
# sudo cp $(pwd)/x11/40-mouse.conf /etc/X11/xorg.conf.d/40-mouse.conf

# Enable faster keyboard repeat rate
# if [ -f "/etc/X11/xorg.conf.d/00-keyboard.conf" ]; then
#     sudo rm /etc/X11/xorg.conf.d/00-keyboard.conf
# fi
# sudo mkdir -p /etc/X11/xorg.conf.d/00-keyboard.conf
# sudo cp $(pwd)/x11/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
