{
  buildRPackage,
  fetchurl,
  MASS,
  RColorBrewer,
  Rcpp,
  ggplot2,
  lamW,
  reshape2,
}:

buildRPackage {
  pname = "LambertW";
  version = "0.6.9-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/LambertW_0.6.9-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/LambertW/LambertW_0.6.9-2.tar.gz"
    ];
    sha256 = "0ahixw858mzl4fvf77lk51dgq9wg0v5az2327ic7ng63wrzkmcx7";
  };

  propagatedBuildInputs = [
    MASS
    RColorBrewer
    Rcpp
    ggplot2
    lamW
    reshape2
  ];

  meta = {
    description = "R package LambertW";
    homepage = "https://cran.r-project.org/package=LambertW";
  };
}
