{
  enable = true;
  enableFishIntegration = true;
  settings = {
    theme = "mestizo-zel";
    default_shell = "fish";
    default_layout = "compact";
    pane_frames = false;
    copy_on_select = true;
    session_name = "Zel";
    attach_to_session = true;
    support_kitty_keyboard_protocol = false;

    "keybinds clear-defaults=true" = import ./atajos.nix;
    themes.mestizo-zel = import ./mestizo-zel.nix;
  };
}
