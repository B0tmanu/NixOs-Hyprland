# NixOs-Hyprland

## You need

git, NixOs

## Install

Clone repo

```
$ git clone https://github.com/B0tmanu/NixOs-Hyprland.git
```

Then copy new hardware-configuration.nix

```
$ sudo cp -r /etc/nixos/hardware-configuration.nix ~/NixOs-Hyprland
```

Do drybuild

```
$ sudo nixos-rebuild dry-build --flake ~/NixOs-Hyprland#bot
```

Then rebuild

```
$ sudo nixos-rebuild switch --flake ~/NixOs-Hyprland#bot
```
