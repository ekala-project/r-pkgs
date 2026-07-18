let
  pins = import ./pins.nix;
  lib = import pins.lib;
  rOverlay = lib.packageSets.mkAutoCalledPackageDir ./pkgs;
  rOverrides = import ./r-packages.nix;
  pkgsOverlay = import ./top-level.nix;
in
{
  config.overlays = {
    pkgs = [ pkgsOverlay ];
    r = [
      rOverlay
      rOverrides
    ];
  };
}
