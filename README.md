# dotfiles

This is my personal `dotfiles` repository, where I store my `dotfiles` (configuration files) of apps and stuff.

I use **GNU Stow** to manage my files. You can read more at <https://www.gnu.org/software/stow/>. (Long story shorts, it helps create symlinks, in a brilliant way)

## Step by step to use configs

Clone this repository. This repo must be place in your home directory `$HOME/dotfiles`.

``` sh
git clone https://github.com/thaisonho/dotfiles.git
```

Make sure you got GNU Stow install. If not, installed it :D

``` sh
sudo pacman -S stow // For Arch users
// or
sudo apt install stow // For Debian-based users
```

Once you have it install, just running

``` sh
stow .
```

Now you have it! :DD

## License

This project is licensed under MIT License
