## Setup New Mac

```shell
./mac-setup.sh
```

## Contents

| File | Description |
|------|-------------|
| `Brewfile` | Homebrew packages |
| `.gitconfig` | Git configuration |
| `.zshrc` | Zsh configuration |
| `.zsh/` | Zsh modules |
| `.vimrc` | Vim configuration |

## Installation

### Mac (recommended)

```shell
cd ~/dotfiles
./install.sh
```

Or for symbolic links only:

```shell
./links.sh
```

### Linux / Container

The scripts work on any path. Example with Docker:

```shell
docker run -it --rm \
  -v $(pwd):/opt/dotfiles:ro \
  ubuntu:latest \
  /bin/bash -c "apt-get update && apt-get install -y zsh git && /opt/dotfiles/install.sh && zsh -l"
```

### Install Homebrew packages only (Mac)

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

### Local overrides

For machine-specific settings, create local files (not tracked in git):

- `~/.zshenv.local` - environment variables
- `~/.zprofile.local` - login shell settings
- `~/.zshrc.local` - interactive shell settings

## OS Compatibility

- macOS-specific settings (Homebrew, Ghostty, etc.) are automatically skipped on Linux
- Commands like `brew`, `anyenv`, `zoxide` only run if installed
- PATH entries are only added if the directory exists
