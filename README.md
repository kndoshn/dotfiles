## Setup New Mac

```shell
. mac-setup.sh
```

## Contents

| File | Description |
|------|-------------|
| `Brewfile` | Homebrew packages |
| `.gitconfig` | Git configuration |
| `.zshrc` | Zsh configuration |
| `.zsh/` | Zsh modules |
| `.vimrc` | Vim configuration |

## Manual Setup

### Symbolic links only

```shell
. links.sh
```

### Install packages only

```shell
brew bundle
```

## Customize

### Add Homebrew packages

Edit `Brewfile`:

```ruby
brew "package-name"
cask "app-name"
```

### Add shell aliases

Edit `.zsh/aliases.zsh`
