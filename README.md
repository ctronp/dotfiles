# Dotfiles Fedora

dotfiles that I use in fedora.

## cloning

### git init

```bash
git init
```

### git init; remote; and pull

```bash
git init
git checkout -b main
bit branch -D master
git remote add origin git@github.com:ctronp/dotfilesFedora.git
git pull --recurse-submodules origin main
git submodule update --init --recursive
```