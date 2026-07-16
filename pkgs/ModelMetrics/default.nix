{
  buildRPackage,
  fetchurl,
  Rcpp,
  data_table,
}:

buildRPackage {
  pname = "ModelMetrics";
  version = "1.2.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ModelMetrics_1.2.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ModelMetrics/ModelMetrics_1.2.2.2.tar.gz"
    ];
    sha256 = "0mrlsw4c5y1vdsqynxr2dcvmhh5h37pnd71jw5a5djpbda9g21jy";
  };

  propagatedBuildInputs = [
    Rcpp
    data_table
  ];

  meta = {
    description = "R package ModelMetrics";
    homepage = "https://cran.r-project.org/package=ModelMetrics";
  };
}
