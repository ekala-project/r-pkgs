{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppArmadillo";
  version = "15.2.6-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppArmadillo_15.2.6-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppArmadillo/RcppArmadillo_15.2.6-1.tar.gz"
    ];
    sha256 = "07wf1rmlm7hp06vcykmxwbzy01ri28zx20vz39j1sk3w1pck5h7r";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppArmadillo";
    homepage = "https://cran.r-project.org/package=RcppArmadillo";
  };
}
