let
  pins = import ./pins.nix;
  lib = import pins.lib;
  rOverlay = lib.mkAutoCalledPackageDir ./pkgs;
  rOverrides = import ./r-packages.nix;
  pkgsOverlay = import ./top-level.nix;
in
{
  overlays = {
    pkgs = [ pkgsOverlay ];
    r = [
      rOverlay
      rOverrides
    ];
  };
}
