{ pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget

  environment.systemPackages = with pkgs;
    [
      vscode
      fish
      rofi
      nixpkgs-fmt
      tdesktop
      nodejs
      git
    ];
}
