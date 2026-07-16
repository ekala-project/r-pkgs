{
  buildRPackage,
  fetchurl,
  Rcpp,
  evd,
  gsl,
  msm,
}:

buildRPackage {
  pname = "rtdists";
  version = "0.11-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rtdists_0.11-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rtdists/rtdists_0.11-5.tar.gz"
    ];
    sha256 = "1v8yhyvliw3dm3ciwxxaa9spfw05wp334l7gmvgv20mab2kjxkwp";
  };

  propagatedBuildInputs = [
    Rcpp
    evd
    gsl
    msm
  ];

  meta = {
    description = "R package rtdists";
    homepage = "https://cran.r-project.org/package=rtdists";
  };
}
