{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  hexbin,
  lattice,
  latticeExtra,
  raster,
  sp,
  terra,
  viridisLite,
  zoo,
}:

buildRPackage {
  pname = "rasterVis";
  version = "0.51.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rasterVis_0.51.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rasterVis/rasterVis_0.51.7.tar.gz"
    ];
    sha256 = "1gfs047g6zjhphc4x4fydz4g0j492rfrs48piwxpirajm8s5b55f";
  };

  propagatedBuildInputs = [
    RColorBrewer
    hexbin
    lattice
    latticeExtra
    raster
    sp
    terra
    viridisLite
    zoo
  ];

  meta = {
    description = "R package rasterVis";
    homepage = "https://cran.r-project.org/package=rasterVis";
  };
}
