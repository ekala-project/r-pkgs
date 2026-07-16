{
  buildRPackage,
  fetchurl,
  Formula,
  Rcpp,
  RcppEigen,
  generics,
  rlang,
}:

buildRPackage {
  pname = "estimatr";
  version = "1.0.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/estimatr_1.0.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/estimatr/estimatr_1.0.6.tar.gz"
    ];
    sha256 = "1yf6srvysl2j00jc1mgywr1bdvv9jcvhwrp09cq4cjzyaq7f2hsd";
  };

  propagatedBuildInputs = [
    Formula
    Rcpp
    RcppEigen
    generics
    rlang
  ];

  meta = {
    description = "R package estimatr";
    homepage = "https://cran.r-project.org/package=estimatr";
  };
}
