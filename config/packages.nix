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
        ] ++ vscode-utils.extensionsFromVscodeMarketplace [
          {
            name = "npm-intellisense";
            publisher = "christian-kohler";
            version = "1.4.4";
            sha256 = "sha256-RLni/Iz2ZIX8/17gArc90ycVU9wPhNBa32Pe47sdGr0=";
          }
          {
            name = "roseate";
            publisher = "endorfina";
            version = "0.3.0";
            sha256 = "sha256-RebMJXfY8hyh1+FgMpkMfsxKUSSgEtd0ZsL7pzxVUMg=";
          }
          {
            name = "elmmet";
            publisher = "necinc";
            version = "1.0.1";
            sha256 = "sha256-ROE1Kv0oOCI1EytnqBnntL7yQ+a2u+YY7j7EaURzieo=";
          }
        ];
      })
      fish
      rofi
      nixpkgs-fmt
      tdesktop
      nodejs
      git
      gitless
      dino
      exercism

      # node packages
      nodePackages."typescript"

      # elm packages <3
      elmPackages.elm
      elmPackages.elm-test
      elmPackages.elm-format
      elmPackages.elm-review
    ];
}
