{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "robslopes";
  version = "1.1.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/robslopes_1.1.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/robslopes/robslopes_1.1.4.tar.gz"
    ];
    sha256 = "05wncj1fc5f8wc478pzjj2j2zq5fbywmb9qb4bmzjahkgf648v79";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package robslopes";
    homepage = "https://cran.r-project.org/package=robslopes";
  };
}
