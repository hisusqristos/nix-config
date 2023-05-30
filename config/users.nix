{ pkgs, ... }:

# Define a user account. Don't forget to set a password with ‘passwd’.
{
  users.users.blasteroid = {
    isNormalUser = true;
    description = "blasteroid";
    extraGroups = [ "networkmanager" "wheel" "audio" ];
    packages = with pkgs; [
      firefox
      #  thunderbird
    ];
    shell = pkgs.fish;
  };
}
