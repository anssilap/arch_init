# Ensure application directory exists for update-desktop-database
mkdir -p ~/.local/share/applications

# Login directly as user, rely on disk encryption + hyprlock for security
# TODO: Do not do this for Hyper-V VMs, since LUKS isn't enabled there
sudo mkdir -p /etc/systemd/system/getty@tty1.service.d
sudo tee /etc/systemd/system/getty@tty1.service.d/override.conf >/dev/null <<EOF
[Service]
ExecStart=
ExecStart=-/usr/bin/agetty --autologin $USER --noclear %I \$TERM
EOF
