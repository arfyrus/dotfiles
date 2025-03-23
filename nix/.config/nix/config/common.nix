{ config, pkgs, ...}: {
    system.stateVersion = 5;
    nixpkgs.config.allowUnfree = true;
    environment.systemPackages =
        [
            pkgs.bat
            pkgs.mkalias
            pkgs.typioca
            pkgs.eza
        ];

    homebrew = {
        enable = true;
        brews = [
            "fzf"
            "zoxide"
            "thefuck"
            "poppler"
            "yazi"
            "grip"
            "stow"
            "starship"
            "cbonsai"
            "neovim"
            "ripgrep"
            "node"
        ];
        casks = [
            "iina"
            "figma"
            "obsidian"
            "ghostty"
        ];
        taps = [
            "homebrew/bundle"
        ];
        masApps = {
        };
        onActivation.cleanup = "zap";
    };

      # fonts.packages =
      #   [
      #     (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" "Iosevka" ] ; })
      #   ];

    system.activationScripts.applications.text = let
      env = pkgs.buildEnv {
        name = "system-applications";
        paths = config.environment.systemPackages;
        pathsToLink = "/Applications";
    };
    in
        pkgs.lib.mkForce ''
        # Set up applications.
        echo "setting up /Applications..." >&2
        rm -rf /Applications/Nix\ Apps
        mkdir -p /Applications/Nix\ Apps
        find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
        while read -r src; do
          app_name=$(basename "$src")
          echo "copying $src" >&2
          ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
        done
        '';

  system.defaults = {
      dock.autohide = true;
      finder.FXPreferredViewStyle = "clmv";
      NSGlobalDomain.AppleICUForce24HourTime = true;
      dock.wvous-tr-corner = 5;
      dock.wvous-br-corner = 4;
  };

  system.keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
  };

  # Necessary for using flakes on this system.
  nix.settings.experimental-features = "nix-command flakes";
}
