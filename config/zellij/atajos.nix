{
  "shared_except \"tmux\" \"locked\"" = {
    "bind \"Alt w\"" = {
      SwitchToMode = "Tmux";
    };
  };

  tmux = {
    "bind \"f\"" = {
      "ToggleFloatingPanes; SwitchToMode" = "Normal";
    };
    "bind \"Esc\"" = {
      "Write 2; SwitchToMode" = "Normal";
    };
    "bind \"[\"" = {
      SwitchToMode = "Scroll";
    };
    "bind \"s\"" = {
      NewPane = "Down";
      SwitchToMode = "Normal";
    };
    "bind \"v\"" = {
      NewPane = "Right";
      SwitchToMode = "Normal";
    };
    "bind \"z\"" = {
      "ToggleFocusFullscreen; SwitchToMode" = "Normal";
    };
    "bind \"c\"" = {
      "NewTab; SwitchToMode" = "Normal";
    };
    "bind \",\"" = {
      SwitchToMode = "RenameTab";
    };
    "bind \"p\"" = {
      "GoToPreviousTab; SwitchToMode" = "Normal";
    };
    "bind \"n\"" = {
      "GoToNextTab; SwitchToMode" = "Normal";
    };
    "bind \"h\"" = {
      MoveFocus = "Left";
      SwitchToMode = "Normal";
    };
    "bind \"j\"" = {
      MoveFocus = "Down";
      SwitchToMode = "Normal";
    };
    "bind \"k\"" = {
      MoveFocus = "Up";
      SwitchToMode = "Normal";
    };
    "bind \"l\"" = {
      MoveFocus = "Right";
      SwitchToMode = "Normal";
    };
    "bind \"d\"" = {
      "Detach; SwitchToMode" = "Normal";
    };
    "bind \"x\"" = {
      "CloseFocus; SwitchToMode" = "Normal";
    };
    "bind \"w\"" = {
      "LaunchOrFocusPlugin \"session-manager\"" = {
        floating = true;
        move_to_focused_tab = true;
      };
      SwitchToMode = "Normal";
    };

  };

  scroll = {
    "bind \"Esc\"" = {
      SwitchToMode = "Normal";
    };
    "bind \"e\"" = {
      "EditScrollback; SwitchToMode" = "Normal";
    };
    "bind \"Ctrl c\"" = {
      "ScrollToBottom; SwitchToMode" = "Normal";
    };
    "bind \"j\"" = {
      "ScrollDown; SwitchToMode" = "Scroll";
    };
    "bind \"k\"" = {
      "ScrollUp; SwitchToMode" = "Scroll";
    };
    "bind \"Ctrl d\"" = {
      "PageScrollDown; SwitchToMode" = "Scroll";
    };
    "bind \"Ctrl u\"" = {
      "PageScrollUp; SwitchToMode" = "Scroll";
    };
  };
}
