#!/usr/bin/bash
set -e

# Repositories
# VS Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

# RPM Fusion
sudo dnf config-manager setopt fedora-cisco-openh264.enabled=1
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Programs (dnf)
sudo dnf install -y code dconf-editor fastfetch
sudo flatpak install flathub -y com.discordapp.Discord com.github.tchx84.Flatseal com.mattjakeman.ExtensionManager net.nokyan.Resources

# Dev
sudo dnf install -y nodejs-npm cmake ninja-build gcc python3

# GBEmu
# sudo dnf install -y sdl2-compat-devel SDL2_ttf-devel check-devel

# Programs (npm)
# sudo npm install -g gitlab-ci-local