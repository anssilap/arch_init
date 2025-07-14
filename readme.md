# Arch init
Arch configuration script based on DHH's [Omarchy](https://github.com/basecamp/omarchy). I don't use the setup, but I like how simple Omarchy is, so I copied the basic structure and made it fit my needs.

## Preparation
Do these steps before running the install

### Create Arch install media
1. Download Arch ISO from: https://archlinux.org/download/
2. Create bootable usb drive
```sh
# Check which drive to use for installation media
sudo fdisk -l

# Below command creates Arch install media out of usb drive sdX
# You need to have `progress` installed, if you want to see status updates while creating the install media
sudo dd if=archlinux-x86_64.iso of=/dev/sdX bs=4M status=progress
```

### Install Arch
Boot Arch using ISO and run `archinstall`

> Add here the typical options used during Arch install

## Running the script
```sh
wget -qO- https://ansslap.com/arch_init | bash
```
If this script is not hosted online anymore, you need to install git, clone the repo and run install.sh manually
