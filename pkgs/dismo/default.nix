{
  buildRPackage,
  fetchurl,
  Rcpp,
  raster,
  sp,
  terra,
}:

buildRPackage {
  pname = "dismo";
  version = "1.3-16";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dismo_1.3-16.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dismo/dismo_1.3-16.tar.gz"
    ];
    sha256 = "0lr0cgs2ldihq0pfi1rxs7bzrii832g979r88dplm98lankj75p7";
  };

  propagatedBuildInputs = [
    Rcpp
    raster
    sp
    terra
  ];

  meta = {
    description = "R package dismo";
    homepage = "https://cran.r-project.org/package=dismo";
  };
}
