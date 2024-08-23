#!/usr/bin/env bash

set -o errexit
set -o nounset

activate() {
    # shellcheck disable=SC1090
    . "$1"
}

export DEBIAN_FRONTEND=noninteractive
alias sudo="sudo -E"

#Disallow root, unless in a container
if [[ ! -f /run/.containerenv ]] && [[ $(whoami) == root ]]
then
    echo You should not be root to run this
    echo If you want to create an user, type 'y' to continue, else 'n' to exit
    read -r answer
    if [[ ${answer } != 'y' ]]
    then
        exit
    fi
    read -r -p 'new username: ' newuser
    read -r -p 'new password: ' password1
    echo
    read -r -s -p 're-type password: ' password2
    if [[ "${password1}" != "${password2}"]]
    then
        echo
        echo "Passwords don't match, exiting"
        exit 1
    fi
    if grep -w "^${newuser}" /etc/passwd
    then
        echo "user ${newuser} already created"
        echo "please re-run after running 'sh - <newuser>'"
        exit 1
    useradd -m -s /bin/bash "${newuser}"
    echo "${newuser}:${password1}" | chpasswd
    echo "${newuser} ALL=(ALL) NOPASSWD:ALL" | sudo EDITOR='tee -a' visudo
    sudo -u "${newuser}" "./$0"
    sudo su - "${newuser}"
    exit $?
fi

# Clean up
echo "[+] Cleaning up apt cache"
sudo rm -rf /var/lib/apt/lists/partial/*

# Address issue with apt update failed because certificate verification
echo "[+] Calling apt update"
sudo apt install ca-certificates
sudo apt update

# Install pre-requisites for Ansible
echo "[+] Installing python3 pip3 and requirements.txt"
sudo apt install -y python3-pip python3-venv
echo "[+] Creating virtualenv and installing requirements"
python3 -m venv "$HOME/.dev-toolkit/"
activate "$HOME/.dev-toolkit/bin/activate"
pip install --upgrade pip
pip install -r requirements.txt --no-cache-dir

# Call setup playbook
ansible-playbook setup.yml --ask-become-pass

# Deactivating virtual environment
echo "[-] Deactivating the virtual environment"
deactivate

# Add commit id to a logfile so version number can be confirmed when accessed remotely
git re-parse HEAD | sudo tee /etc/dev-toolkit-commit-id