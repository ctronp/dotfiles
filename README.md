# Dotfiles Fedora

dotfiles that I use in linux.

## cloning

### git init and download

first add the ssh to github then execute:

```bash
git config --global init.defaultBranch main && \
git config --global commit.gpgsign true && \
git init && \
git remote add origin git@github.com:ctronp/dotfiles.git && \
git pull origin main
```

## Disable SMT

add ```nosmt=force``` in ```GRUB_CMDLINE_LINUX```
 on ```/etc/default/grub```

if you are on fedora:

- run: ```grub2-mkconfig -o /boot/grub2/grub.cfg -o /boot/efi/EFI/fedora/grub.cfg```

if you are on ubuntu:

- run: ```sudo update-grub```

## dnf.conf

add ```max_parallel_downloads=10``` to the end of the ```/etc/dnf/dnf.conf``` file.
