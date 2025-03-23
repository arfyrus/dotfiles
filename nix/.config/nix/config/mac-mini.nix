{ config, pkgs, ... }: {
    nixpkgs.hostPlatform = "aarch64-darwin";
    environment.systemPackages =
        [
            pkgs.gowall
            pkgs.zathura
            pkgs.tmux
        ];
    homebrew = {
        enable = true;
        brews = [
            "cmake"
            "glow"
            "yt-dlp"
            "protobuf"
            "wget"
        ];
        casks = [
            "discord"
            "basictex"
        ];
        taps = [
        ];
        masApps = {
        };
        onActivation.cleanup = "zap";
    };
}
