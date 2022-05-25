# Dotfiles Fedora

dotfiles that I use in fedora.

## cloning

### git init and download

first add the ssh to github then execute:

```bash
git config --global init.defaultBranch main && \
git init && \
git remote add origin git@github.com:ctronp/dotfilesFedora.git && \
git pull --recurse-submodules origin main && \
git submodule update --init --recursive
```
