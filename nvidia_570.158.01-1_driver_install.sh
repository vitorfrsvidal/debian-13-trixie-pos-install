#!/bin/bash

wget https://developer.download.nvidia.com/compute/cuda/repos/debian12/x86_64/cuda-keyring_1.1-1_all.deb && dpkg -i cuda-keyring_1.1-1_all.deb && apt update && apt install linux-headers-amd64 && apt install libxnvctrl0:amd64=570.158.01-1 libnvidia-ptxjitcompiler1:amd64=570.158.01-1 libnvidia-pkcs11-openssl3:amd64=570.158.01-1 nvidia-settings:amd64=570.158.01-1 nvidia-xconfig:amd64=570.158.01-1 libnvidia-nvvm4:amd64=570.158.01-1 libcuda1:amd64=570.158.01-1 nvidia-persistenced:amd64=570.158.01-1 nvidia-opencl-icd:amd64=570.158.01-1 libcudadebugger1:amd64=570.158.01-1 libnvcuvid1:amd64=570.158.01-1 libnvidia-fbc1:amd64=570.158.01-1 libnvoptix1:amd64=570.158.01-1 libnvidia-encode1:amd64=570.158.01-1 libnvidia-opticalflow1:amd64=570.158.01-1 libnvidia-sandboxutils:amd64=570.158.01-1 nvidia-driver-cuda:amd64=570.158.01-1 nvidia-modprobe:amd64=570.158.01-1 xserver-xorg-video-nvidia:amd64=570.158.01-1 libegl-nvidia0:amd64=570.158.01-1 nvidia-vdpau-driver:amd64=570.158.01-1 libnvidia-ngx1:amd64=570.158.01-1 libnvidia-cfg1:amd64=570.158.01-1 libnvidia-allocator1:amd64=570.158.01-1 libnvidia-glvkspirv:amd64=570.158.01-1 libnvidia-ml1:amd64=570.158.01-1 libnvidia-glcore:amd64=570.158.01-1 libnvidia-gpucomp:amd64=570.158.01-1 libglx-nvidia0:amd64=570.158.01-1 libnvidia-api1:amd64=570.158.01-1 libnvidia-eglcore:amd64=570.158.01-1 nvidia-vulkan-icd:amd64=570.158.01-1 nvidia-egl-icd:amd64=570.158.01-1 libnvidia-vksc-core:amd64=570.158.01-1 nvidia-driver-libs:amd64=570.158.01-1 libgles-nvidia2:amd64=570.158.01-1 libgles-nvidia1:amd64=570.158.01-1 libnvidia-rtcore:amd64=570.158.01-1 nvidia-driver-libs:amd64=570.158.01-1 nvidia-kernel-support:amd64=570.158.01-1 nvidia-driver:amd64=570.158.01-1 firmware-nvidia-gsp:amd64=570.158.01-1 nvidia-kernel-open-dkms:amd64=570.158.01-1 nvidia-open-570.158.01
#apt install nvidia-open-570

#apt install cuda-toolkit-12

# PS.: Ficar de olho pra ver quando vai aparecer o repositório para debian13

sleep 3

echo "blacklist r8169" | sudo tee /etc/modprobe.d/r8169-disable.conf && sudo update-initramfs -u -k all

#echo "install r8169 /bin/false" | sudo tee /etc/modprobe.d/r8169-disable.conf && update-initramfs -u -k all

#echo -e "blacklist r8169\ninstall r8169 /bin/false" | sudo tee /etc/modprobe.d/r8169-disable.conf && sudo update-initramfs -u -k all

