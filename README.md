# R Packages for poly-repo Nixpkgs

This is the central location to curate R packages (CRAN, Bioconductor) for
the ekala poly-repo nixpkgs fork.

## Structure

```
default.nix       # Entry point, returns pkgs + our changes in this repo
r-packages.nix    # R overlay, applied after the auto-called entries in `pkgs/`
top-level.nix     # top-level overlay (for non-R package overrides)
pkgs/             # mkAutoCalledDirectory containing all R package expressions
```

## Adding a package

Create `pkgs/<package-name>/default.nix` with a `buildRPackage` call:

```nix
{ buildRPackage, fetchurl }:

buildRPackage {
  pname = "example";
  version = "1.0.0";
  src = fetchurl {
    url = "https://cran.r-project.org/src/contrib/example_1.0.0.tar.gz";
    sha256 = "...";
  };
  propagatedBuildInputs = [ /* R deps */ ];
}
```

The package will be automatically available in the R package scope.
