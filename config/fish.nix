{
  enable = true;
  shellInit = # fish
    ''
      set -g fish_greeting ""

      set -g tide_os_color white
      set -g tide_os_bg_color red
      set -g tide_pwd_bg_color cyan
      set -g tide_pwd_color_anchors black
      set -g tide_pwd_color black
      set -g tide_pwd_color_dirs black
      set -g tide_pwd_color_truncated_dirs black
    '';
  interactiveShellInit = # fish
    ''
      alias ls="eza --icons always --color always --long --git --no-user --no-time --no-permissions --no-filesize --all  --sort type --grid"
      alias ll="eza --icons always --color always --long --git --all --sort type"
      alias tree="eza --icons always --color always --long --git --no-user --no-time --no-permissions --no-filesize --all  --sort type --tree --git-ignore"
      alias cat="batcat"

      set -g fzf_preview_dir_cmd eza --icons always --color always --long --git --no-user --no-time --no-permissions --no-filesize --all --sort type
    '';
}
