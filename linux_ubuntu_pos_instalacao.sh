#!/bin/bash

# Função para mostrar o menu
mostrar_menu() {
  clear  
  echo "+--------------------------------------------------------+"
  echo "|       SELECIONE UMA OPÇÃO:                             |"
  echo "|   1. Atualizar o sistema                               |"
  echo "|   2. Instalar Ubuntu Restricted Extras                 |"
  echo "|   3. Instalar Kubuntu Restricted Extras                |"
  echo "|   4. Instalar Google Chrome                            |"
  echo "|   5. Disable Keyring Popup                             |"
  echo "|   6. Instalar Git                                      |"
  echo "|   7. Instalar Virt-Manager                             |"
  echo "|   8. Instalar (Guest Agent) Virt-Manager               |"
  echo "|   q. Sair                                              |"
  echo "+--------------------------------------------------------+"

}

# Loop principal
while true; do
  mostrar_menu

  # Ler a escolha do usuário
  read -p "DIGITE O NÚMERO DA OPÇÃO DESEJADA: " choice

  case $choice in
    1)
      # Opção 1: Atualizar o sistema
      sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y

      ;;
    2)
      # Opção 2. Instalar Ubuntu Restricted Extras
      sudo apt install -y ubuntu-restricted-extras && sudo apt install -y ttf-mscorefonts-installer && sudo apt install -y fonts-roboto fonts-cascadia-code fonts-firacode && sudo apt install -y unace rar unrar zip unzip p7zip-full p7zip-rar

      ;;
    3)
      # Opção 3. Instalar Kubuntu Restricted Extras
      sudo apt install -y kubuntu-restricted-extras && sudo apt install -y ttf-mscorefonts-installer && sudo apt install -y fonts-roboto fonts-cascadia-code fonts-firacode && sudo apt install -y unace rar unrar zip unzip p7zip-full p7zip-rar
      
      ;;
    4)
      # Opção 4. Instalar Google Chrome
      wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install ./google-chrome-stable_current_amd64.deb && rm google-chrome-stable_current_amd64.deb
      
      ;;
    5)
      # Opção 5. Disable Keyring Popup
      rm -r /home/$User/.local/share/keyrings/*
      
      ;;
    6)
      # Opção 6. Instalar Git
      sudo apt install -y git && git config --global user.email brcesarms@gmail.com && git config --global user.name brcesarms
      
      ;;
    7)
      # Opção 7. Instalar Virt-Manager
      sudo apt install -y qemu qemu-kvm libvirt-daemon libvirt-clients bridge-utils virt-manager && sudo usermod -a -G libvirt $USER
      
      ;;
    8)
      # Opção 8. Virt-Manager Guest Agent integration and performance
      sudo apt install -y qemu-guest-agent
      
      ;;
    q)
      # Opção q: Sair do script
      break
      ;;
    *)
      # Opção inválida
      echo "=====================> [ OPÇÃO INVÁLIDA, TENTE NOVAMENTE! ]"
      ;;
  esac

  # Pausa para o usuário ler a mensagem antes de limpar a tela
  read -p "=====================> [ PRESSIONE ENTER PARA CONTINUAR...! ]"

done