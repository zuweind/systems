{ pkgs, inputs, ... }:
{
  home.packages = [ inputs.flyline.packages.${pkgs.stdenv.hostPlatform.system}.default ];

  programs.bash.initExtra = ''
    if [ -f "$HOME/.local/state/nix/profile/etc/profile.d/hm-session-vars.sh" ]; then
        source "$HOME/.local/state/nix/profile/etc/profile.d/hm-session-vars.sh"
    fi
    export GNUPGHOME="$HOME/.local/share/gnupg"
    enable -f "${inputs.flyline.packages.${pkgs.stdenv.hostPlatform.system}.default}/lib/libflyline.so" flyline 2>/dev/null || true
  '';
}
