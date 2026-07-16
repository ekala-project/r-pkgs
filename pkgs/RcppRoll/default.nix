{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppRoll";
  version = "0.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppRoll_0.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppRoll/RcppRoll_0.3.2.tar.gz"
    ];
    sha256 = "10cznxyjlb2n4lhlqb9f9da37skzmglgmczpbwa3918dpjkh2zci";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppRoll";
    homepage = "https://cran.r-project.org/package=RcppRoll";
  };
}
