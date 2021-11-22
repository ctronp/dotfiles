# Dotfiles manjaro KDE-plasma

dotfiles that i use in manjaro kde.

## cloning

### git init

```bash
git init
```

#### if you are in master branch

```bash
git checkout -b main
bit branch -D master
```

### remote and pull

```bash
git init
git remote add origin https://github.com/ctronp/dotfilesManjaro.git
git pull --recurse-submodules origin main
git submodule update --recursive
```

else

```bash
git init
git remote add origin https://github.com/ctronp/dotfilesManjaro.git
git pull origin main
git submodule update --init --recursive
```

Ninguno de los comandos previos fue testeado. Xd.
