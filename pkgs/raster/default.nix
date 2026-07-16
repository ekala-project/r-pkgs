{
  buildRPackage,
  fetchurl,
  Rcpp,
  sp,
  terra,
}:

buildRPackage {
  pname = "raster";
  version = "3.6-32";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/raster_3.6-32.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/raster/raster_3.6-32.tar.gz"
    ];
    sha256 = "14h61mq4jsjvpfbn023dhy8wdqlkv46md3gdv8pancczikpal2ih";
  };

  propagatedBuildInputs = [
    Rcpp
    sp
    terra
  ];

  meta = {
    description = "R package raster";
    homepage = "https://cran.r-project.org/package=raster";
  };
}
