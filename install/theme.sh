# Use dark mode for QT apps too (like kdenlive)
sudo pacman -S --noconfirm kvantum-qt5

# Prefer dark mode everything
sudo pacman -S --noconfirm gnome-themes-extra # Adds Adwaita-dark theme
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"

# # Setup theme links
# mkdir -p ~/.config/arch_init/themes
# for f in ~/.local/share/arch_init/themes/*; do ln -s "$f" ~/.config/arch_init/themes/; done

# # Set initial theme
# mkdir -p ~/.config/arch_init/current
# ln -snf ~/.config/arch_init/themes/tokyo-night ~/.config/arch_init/current/theme
# source ~/.local/share/arch_init/themes/tokyo-night/backgrounds.sh
# ln -snf ~/.config/arch_init/backgrounds/tokyo-night ~/.config/arch_init/current/backgrounds
# ln -snf ~/.config/arch_init/current/backgrounds/1-Pawel-Czerwinski-Abstract-Purple-Blue.jpg ~/.config/arch_init/current/background

# # Set specific app links for current theme
# ln -snf ~/.config/arch_init/current/theme/wofi.css ~/.config/wofi/style.css
# ln -snf ~/.config/arch_init/current/theme/neovim.lua ~/.config/nvim/lua/plugins/theme.lua
# mkdir -p ~/.config/btop/themes
# ln -snf ~/.config/arch_init/current/theme/btop.theme ~/.config/btop/themes/current.theme
# mkdir -p ~/.config/mako
# ln -snf ~/.config/arch_init/current/theme/mako.ini ~/.config/mako/config
