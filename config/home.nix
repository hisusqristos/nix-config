{ pkgs, ... }:

{
  imports = [
    # home manager
    <home-manager/nixos>
  ];

  home-manager.users.blasteroid = { pkgs, ... }: {
    home.stateVersion = "22.11";
    home.packages = [ pkgs.node2nix ];
  };
}
