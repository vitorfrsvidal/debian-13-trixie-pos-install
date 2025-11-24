#!/bin/bash

apt update && apt install build-essential vim gedit lm-sensors psensor gparted smartmontools kolourpaint linux-headers-amd64 easyeffects rsync gnome-shell-extension-manager auditd audispd-plugins git

# PS.: Ficar de olho para ver quando vai aparecer o repositorio debian13 com os drivers da nvidia
sleep 3
wget https://developer.download.nvidia.com/compute/cuda/repos/debian12/x86_64/cuda-keyring_1.1-1_all.deb && dpkg -i cuda-keyring_1.1-1_all.deb && apt update && apt install nvidia-open && echo "driver nvidia-open instalado!" || exit 1

#sleep 3
#apt update && apt install cuda-toolkit && echo "cuda-toolkit instalado!" || exit 1


# ------------------------------------------------------------------------------------------------------


# Instalar kernel backported (verificar se os repositorios de backports estão ativos em /etc/apt/sources.list)

sleep 3
apt update && apt install -t trixie-backports linux-image-amd64 linux-headers-amd64 && echo "backported kernel instalado!" || exit 1


# ------------------------------------------------------------------------------------------------------


# Instalar ferramenta para GPU

sleep 3
apt update && apt install mesa-utils && echo "mesa-utils instalado!" || exit 1


# ------------------------------------------------------------------------------------------------------

# Instalar o driver r8125 e blacklistar o driver r8169


#sleep 3
#apt update && apt install r8125-dkms && echo "Driver r8125 instalado!" || exit 1


# Alternativa mais "soft":

#sleep 3
#echo "blacklist r8169" | sudo tee /etc/modprobe.d/r8169-disable.conf && sudo update-initramfs -u -k all && echo "Driver r8169 blacklistado! Reinicie o computador..." || exit 1


# Alternativa mais "hard" (utilizar se a "soft" nao funcionar):

#sleep 3 
#echo "install r8169 /bin/false" | sudo tee /etc/modprobe.d/r8169-disable.conf && update-initramfs -u -k all && echo "Driver r8169 blacklistado! Reinicie o computador..." || exit 1


# Alternativa mais "completa" (utilizar se a "hard" nao funcionar):

#sleep 3 
#echo -e "blacklist r8169\ninstall r8169 /bin/false" | sudo tee /etc/modprobe.d/r8169-disable.conf && sudo update-initramfs -u -k all && echo "Driver r8169 blacklistado! Reinicie o computador..." || exit 1

