{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "nikolai";
  home.homeDirectory = "/home/nikolai";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = [
    # pkgs is the set of all packages in the default home.nix implementation
    pkgs.tmux
    pkgs.neovim
    pkgs.fzf
  ];

  home.file.".bashrc".source = ./bashrc;
  home.file.".zshrc".source = ./zshrc;
  home.file.".gitconfig".source= ./gitconfig;
  home.file.".gitignore".source= ./gitignore;
  home.file.".config/nvim".source= ./nvim;
}
