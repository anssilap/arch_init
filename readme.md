# Arch init

## Preparation
Do these steps before running `install.sh`

### Create Arch install media
1. Download Arch ISO from: https://archlinux.org/download/
2. Create bootable usb drive
```sh
# Check which drive use for installation media
sudo fdisk -l

# Creates Arch install media out of usb drive sdX
# Remember to install progress, if you want to see status updates while createing the install media
sudo dd if=archlinux-x86_64.iso of=/dev/sdX bs=4M status=progress
```

### Install Arch
Boot Arch using ISO and run `archinstall`

> Add here the option used during Arch install

### Run `install.sh` script

