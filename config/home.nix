{ pkgs, ... }:

{
  imports = [
    # home manager
    <home-manager/nixos>
  ];

  home-manager.users.blasteroid = { pkgs, ... }: {
    home.stateVersion = "22.11";
    home.packages = with pkgs;
      [
        node2nix
        htop

        # npm packages
        nodePackages."http-server"
      ];

    # programs.rofi = {
    #   enable = true;
    #   theme = theme;
    # };


    programs.home-manager = {
      enable = true;
    };
  };
}
