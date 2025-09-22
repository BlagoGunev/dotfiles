# dotfiles
Repository containing the configuration for my Fedora Linux.

## WM, Shell and Programs
- [Hyprland](https://github.com/hyprwm/Hyprland)
- [Kitty](https://github.com/kovidgoyal/kitty)
- [Waybar](https://github.com/Alexays/Waybar)

## Prerequisites
Prerequisites to the installation:
- [GNU Stow](https://gnu.org/software/stow/) is used to symlink the directory into the correct location.

Install with the following commmand:
```
sudo dnf install -y stow
```

## Setup
Clone the repository in the Home `~` directory. Then use Stow to symlink to the files:
```
cd ~
git clone github.com/BlagoGunev/dotfiles.git
cd dotfiles
stow .
```

## Computer install
Use the files in the `.install` directory to install essential programs, such as programming environments, compilers, [ZSH](https://www.zsh.org/) and set up services like [Docker](https://www.docker.com/) or the fix for the double-typing keyboard. Please read the files before executing them.