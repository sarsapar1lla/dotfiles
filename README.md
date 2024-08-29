# dotfiles

## Dependencies

- [Homebrew package manager](https://brew.sh/)
- [GNU Stow](https://www.gnu.org/software/stow/)

After installing Homebrew, add stow using:

```bash
$ brew install stow
```

## Install dotfiles

To install dotfiles, clone this repo to `~/dotfiles` then run:

```bash
$ cd ~/dotfiles
$ stow . --no-folding
```

The `--no-folding` option ensures that multiple different stow directories won't conflict.

## Install packages

Install brew packages from the `~/.config/Brewfile` using:

```bash
$ brewup
```

> *NB*: to use the brew installed `fish`, you will need to edit the `/etc/shells` file to include the installed
path. Then you can run `chsh -s $PATH_TO_FISH`. This may require you to restart your machine for the changes
to take effect

## Local configurations

To include additional local abbreviations or functions, (e.g. sensitive work-related stuff), symlink them to
the `~/.config/fish/conf.d` or `~/.config/fish/functions` directories and they'll be picked up automatically
by fish. Easy!

## Fonts

Some features of the terminal configuration require fonts that support emojis etc. The `CaskaydiaCove` font
can be downloaded [here](https://www.nerdfonts.com/font-downloads).
