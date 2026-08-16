{ config, pkgs, ... }:

{
  home.username = "botmanu";
  home.homeDirectory = "/home/botmanu";

  home.stateVersion = "26.05";

  xdg.configFile."waybar".source = ./configs/waybar;
  xdg.configFile."rofi".source = ./configs/rofi;
  xdg.configFile."hypr".source = ./configs/hypr;
  xdg.configFile."VSCodium".source = ./configs/VSCodium;
  xdg.configFile."kitty".source = ./configs/kitty;
  xdg.configFile."fastfetch".source = ./configs/fastfetch;
  xdg.configFile."nvim".source = ./configs/nvim;
  xdg.configFile."wlogout".source = ./configs/wlogout;
  

  home.file.".themes/oomox-rxyhn".source = ./themes/oomox-rxyhn;

  xdg.dataFile."rofi".source = ./locals/rofi;

  home.packages = with pkgs; [
    eza
    fastfetch
    wl-clipboard
    cliphist
    pavucontrol
    hyprpicker
    hyprshot
    wlogout
    neovim
    kitty
    rofi
    waybar
    fish
    brave
    obs-studio
    nwg-look
    file-roller
    papirus-icon-theme
    bibata-cursors
    adwaita-icon-theme
    awww
    vscodium
    prismlauncher
    discord
    protonplus
    fetch
    apple-cursor
    nemo
    mpv
    imv
    swaynotificationcenter
  ];

  programs.fish = {
    enable = true;

    shellAliases = {
      home = "cd ~";
      vi = "nvim";
      nixconfig = "sudoedit /etc/nixos/configuration.nix";
      nixgen = "sudo nixos-rebuild switch --flake ~/nixos#bot";
      nixupdate = "sudo nixos-rebuild switch --upgrade";
      svi = "sudoedit";
      ls = "eza -a --group-directories-first";
      ll = "eza -la";
    };

    interactiveShellInit = ''
      set -g fish_greeting

      function cd
          builtin cd $argv
          and eza -a --group-directories-first
      end
    '';
  };
  programs.git = {
    enable = true;
  };

  programs.home-manager.enable = true;
}
