let
  pins = import ./pins.nix;
  lib = import pins.lib;
  rOverlay = lib.packageSets.mkAutoCalledPackageDir ./pkgs;
  rOverrides = import ./r-packages.nix;
  pkgsOverlay = import ./top-level.nix;

  overlayType = lib.mkOptionType {
    name = "overlay";
    description = "overlay";
    check = lib.isFunction;
    merge = lib.mergeOneOption;
  };
in
{
  options.overlays.r = lib.mkOption {
    type = lib.types.listOf overlayType;
    default = [ ];
    description = ''
      Overlays to be applied to the r package set.
    '';
  };

  config.overlays = {
    pkgs = [ pkgsOverlay ];
    r = [
      rOverlay
      rOverrides
    ];
  };
}
