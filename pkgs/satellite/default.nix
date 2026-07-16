{
  buildRPackage,
  fetchurl,
  Rcpp,
  plyr,
  raster,
  terra,
}:

buildRPackage {
  pname = "satellite";
  version = "1.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/satellite_1.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/satellite/satellite_1.0.6.tar.gz"
    ];
    sha256 = "1awcbwi85fis9py3bcid64chnsrxd9ndq6hm2f11j36y95lwsyac";
  };

  propagatedBuildInputs = [
    Rcpp
    plyr
    raster
    terra
  ];

  meta = {
    description = "R package satellite";
    homepage = "https://cran.r-project.org/package=satellite";
  };
}
