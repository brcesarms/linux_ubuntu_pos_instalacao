# Pos instalacao linux ubuntu 26.04

## Script
```bash
sudo bash -c "$(wget https://raw.githubusercontent.com/xbrncsr/ubuntu/main/ubuntu.sh -O -)"
 
```


## 1: Atualizar o sistema
```bash
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y
 
```


## 2. Instalar Ubuntu Restricted Extras
```bash
sudo apt install -y ubuntu-restricted-extras && sudo apt install -y ttf-mscorefonts-installer && sudo apt install -y fonts-roboto fonts-cascadia-code fonts-firacode && sudo apt install -y unace rar unrar zip unzip p7zip-full p7zip-rar
 
```


## 3. Instalar Kubuntu Restricted Extras
```bash
sudo apt install -y kubuntu-restricted-extras && sudo apt install -y ttf-mscorefonts-installer && sudo apt install -y fonts-roboto fonts-cascadia-code fonts-firacode && sudo apt install -y unace rar unrar zip unzip p7zip-full p7zip-rar
 
```
   

## 4. Instalar Google Chrome
```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install ./google-chrome-stable_current_amd64.deb && rm google-chrome-stable_current_amd64.deb
 
```


## 5. Disable Keyring Popup
```bash
rm -r /home/$User/.local/share/keyrings/*
 
```


## 6. Instalar Git
```bash
sudo apt install -y git && git config --global user.email brcesarms@gmail.com && git config --global user.name brcesarms
 
```


## 7. Instalar Virt-Manager
```bash
sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager && sudo usermod -a -G libvirt $USER
 
```


## 8. Instalar (Guest Agent) Virt-Manager 
```bash
sudo apt install -y qemu-guest-agent
 
```
  