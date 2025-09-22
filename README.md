# dotfiles
Repository containing the configuration for my Fedora Linux.

## WM, Shell and Programs
- [Hyprland](github.com/hyprwm/Hyprland)
- [Kitty](https://github.com/kovidgoyal/kitty)
- [Waybar](github.com/Alexays/Waybar)

## Prerequisites
Prerequisites to the installation:
- [GNU Stow](gnu.org/software/stow/) is used to symlink the directory into the correct location.

Install with the following commmand:
```
sudo dnf install -y stow
```

## Installation
Clone the repository in the Home `~` directory. Then use Stow to symlink to the files:
```
cd ~
git clone github.com/BlagoGunev/dotfiles.git
cd dotfiles
stow .
```