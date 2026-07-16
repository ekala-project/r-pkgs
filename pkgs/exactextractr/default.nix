{
  buildRPackage,
  fetchurl,
  Rcpp,
  raster,
  sf,
}:

buildRPackage {
  pname = "exactextractr";
  version = "0.10.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/exactextractr_0.10.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/exactextractr/exactextractr_0.10.1.tar.gz"
    ];
    sha256 = "1km58l3zg4600fx7f4knn5bn024w2bdchf6alyzq1hc7wks927s5";
  };

  propagatedBuildInputs = [
    Rcpp
    raster
    sf
  ];

  meta = {
    description = "R package exactextractr";
    homepage = "https://cran.r-project.org/package=exactextractr";
  };
}
