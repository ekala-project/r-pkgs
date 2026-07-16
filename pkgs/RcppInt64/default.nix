{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppInt64";
  version = "0.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppInt64_0.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppInt64/RcppInt64_0.0.5.tar.gz"
    ];
    sha256 = "1h4lshkn3p3c7swygbpmkg0pa80xcp3f9alck5q4bmml61hicwjk";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppInt64";
    homepage = "https://cran.r-project.org/package=RcppInt64";
  };
}
