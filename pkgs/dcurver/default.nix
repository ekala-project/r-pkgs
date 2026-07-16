{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
}:

buildRPackage {
  pname = "dcurver";
  version = "0.9.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dcurver_0.9.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dcurver/dcurver_0.9.3.tar.gz"
    ];
    sha256 = "1z2mfglik0q5z06w71m6j5y4cg3r5p626s1q7vjafl62y6d0wfln";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
  ];

  meta = {
    description = "R package dcurver";
    homepage = "https://cran.r-project.org/package=dcurver";
  };
}
