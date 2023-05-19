# Configure keymap in X11
{
  services.xserver =
    {
      # Enable the X11 windowing system.
      enable = true;
      layout = "us, am";
      xkbVariant = ", phonetic";

      xkbOptions = "grp:caps_toggle"; # Keyboard layout switching options

      # Enable the XFCE Desktop Environment.
      displayManager.lightdm.enable = true;
      desktopManager.xfce.enable = true;
    };
}
