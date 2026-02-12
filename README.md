# dotfiles

Config files managed from `~/.config`.

## Contents

- **zsh** - shell config and aliases
- **ghostty** - terminal config and custom theme
- **starship** - prompt theme
- **Cursor** - editor settings
- **pypoetry** - Python package manager config

## Install

```bash
cd ~/.config
git init
git remote add origin https://github/com/mahotd/dotfiles
git fetch
git checkout main -f
```

then:

```bash
./dotfiles.sh
```

Symlinks dotfiles that need to live in `~` back to this directory.
