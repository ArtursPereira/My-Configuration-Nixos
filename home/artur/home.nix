{ pkgs, ... }:

{
  home.username = "artur";
  home.homeDirectory = "/home/artur";

  home.stateVersion = "26.05";

  home.packages = with pkgs; [
    # Adicione pacotes aqui gradualmente.
  ];

  programs.git = {
    enable = true;
    settings.user = {
      name = "Artur Pereira";
      email = "ArtursPereira@users.noreply.github.com";
    };
  };

  xdg.configFile."hypr/hyprland.conf" = {
    source = ./hyprland.conf;
    force = true;
  };

  xdg.configFile."hypr/hyprland.lua" = {
    source = ./hyprland.lua;
    force = true;
  };
}
