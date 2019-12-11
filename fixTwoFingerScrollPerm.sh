#!/bin/bash
echo 'xserver-xorg-input-synaptics driver is needed for the touchpad on thinkpad-laptops to work with ubuntu 18.04'
echo 'if xserver-xorg-input-synaptics is installed, it will be written to output of this script...'
apt list --installed | grep xserver-xorg-input-synaptics

read -n1 -p "If xserver-xorg-input-synaptics where not listed above, would you like to install it? ( This will restart the machine) [y,n]"  wasListed
case $wasListed in
	y|Y)
      sudo apt-get update -y
      sudo apt-get install xserver-xorg-input-synaptics
      sudo shutdown now -r  ;;
  *)echo 'Was listed. Not installing...' ;;
esac
