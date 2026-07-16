{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  crosstalk,
  htmltools,
  htmlwidgets,
  jquerylib,
  leaflet_providers,
  magrittr,
  png,
  raster,
  rlang,
  scales,
  sf,
  viridisLite,
  xfun,
}:

buildRPackage {
  pname = "leaflet";
  version = "2.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/leaflet_2.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/leaflet/leaflet_2.2.3.tar.gz"
    ];
    sha256 = "1l0slppa61hmzkqj9wmplb9ldsyvg61igsd9dlv5yx06k2by77xg";
  };

  propagatedBuildInputs = [
    RColorBrewer
    crosstalk
    htmltools
    htmlwidgets
    jquerylib
    leaflet_providers
    magrittr
    png
    raster
    rlang
    scales
    sf
    viridisLite
    xfun
  ];

  meta = {
    description = "R package leaflet";
    homepage = "https://cran.r-project.org/package=leaflet";
  };
}
