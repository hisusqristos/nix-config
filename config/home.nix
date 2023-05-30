{ pkgs, ... }:

{
  imports = [
    # home manager
    <home-manager/nixos>
  ];

  home-manager.users.blasteroid = { pkgs, ... }: {
    home.stateVersion = "22.11";
<<<<<<< HEAD
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
=======
    home.packages = [ pkgs.node2nix ];

    # programs.vscode = {
    #   enable = true;
    #   extensions = with pkgs;
    # };
>>>>>>> 0c4bb88 (:wind: voshmiban)
  };
}
