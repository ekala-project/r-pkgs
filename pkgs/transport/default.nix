{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppEigen,
  data_table,
}:

buildRPackage {
  pname = "transport";
  version = "0.15-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/transport_0.15-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/transport/transport_0.15-4.tar.gz"
    ];
    sha256 = "1kr03iqyfv2icxdalj06rfwrjj6k281wn87dvz4kkp35zpv454sf";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppEigen
    data_table
  ];

  meta = {
    description = "R package transport";
    homepage = "https://cran.r-project.org/package=transport";
  };
}
