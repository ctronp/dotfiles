# Dotfiles Fedora

dotfiles that I use in fedora.

## cloning

### git init

```bash
git config --global init.defaultBranch main
git init
```

### git init; remote; and pull

```bash
git init
git remote add origin git@github.com:ctronp/dotfilesFedora.git
git pull --recurse-submodules origin main
git submodule update --init --recursive
```
