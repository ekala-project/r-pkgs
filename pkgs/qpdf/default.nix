{
  buildRPackage,
  fetchurl,
  Rcpp,
  askpass,
  curl,
}:

buildRPackage {
  pname = "qpdf";
  version = "1.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qpdf_1.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qpdf/qpdf_1.4.1.tar.gz"
    ];
    sha256 = "1ihmqcyzqs67ngnx4rwrcax5g9i7ikfly36b7hw7xwdpk7qcdcis";
  };

  propagatedBuildInputs = [
    Rcpp
    askpass
    curl
  ];

  meta = {
    description = "R package qpdf";
    homepage = "https://cran.r-project.org/package=qpdf";
  };
}
