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
$ stow .
```

## Install packages

Install brew packages from the `~/.config/Brewfile` using:

```bash
$ brewup
```

> *NB*: to use the brew installed `zsh`, you will need to edit the `/etc/shells` file to include the installed
path. Then you can run `chsh -s $PATH_TO_ZSH`

## Local .zshrc

To include additional local sources (e.g. sensitive work-related stuff), provide a `.zshrc` file within the
`~/.local/` directory and it will be sourced along with everything else. Easy!
