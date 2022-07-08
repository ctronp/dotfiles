# Dotfiles Fedora

dotfiles that I use in fedora.

## cloning

### git init and download

first add the ssh to github then execute:

```bash
git config --global init.defaultBranch main && \
git config --global commit.gpgsign true && \
git init && \
git remote add origin git@github.com:ctronp/dotfilesFedora.git && \
git pull --recurse-submodules origin main && \
git submodule update --init --recursive
```

## Disable SMT

add ```nosmt=force``` in ```GRUB_CMDLINE_LINUX```
 on ```/etc/default/grub``` or ```/etc/grub2.cfg```

run: ```grub2-mkconfig -o /boot/grub2/grub.cfg -o /boot/efi/EFI/fedora/grub.cfg```
