{ pkgs, ... }:

{
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget

  environment.systemPackages = with pkgs;
    [
      (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
          bbenoist.nix
          ms-vsliveshare.vsliveshare
          jnoortheen.nix-ide
          elmtooling.elm-ls-vscode
          sbrink.elm
        ] ++ vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "roseate";
            publisher = "endorfina";
            version = "0.3.0";
            sha256 = "sha256-RebMJXfY8hyh1+FgMpkMfsxKUSSgEtd0ZsL7pzxVUMg=";
          }
        ];
      })
      fish
      rofi
      nixpkgs-fmt
      tdesktop
      nodejs
      git
      dino
      exercism

      # elm packages <3
      elmPackages.elm
      elmPackages.elm-test
      elmPackages.elm-format
      elmPackages.elm-review
    ];
}
