#!/bin/bash

# Example of how to do case statements and execute something based on hostname
case "$HOSTNAME" in
    desktop-wsl | desktop | shodan)
      echo Running on desktop
      ;;

    work-wsl | circle-wsl)
      echo Running on wsl
      ;;

    arch-vm | hyper-v)
      echo Running on VM
      ;;

    *)
      echo Fallback case!
esac
