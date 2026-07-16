{
  buildRPackage,
  fetchurl,
  DBI,
  Rcpp,
  classInt,
  s2,
  units,
}:

buildRPackage {
  pname = "sf";
  version = "1.1-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sf_1.1-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sf/sf_1.1-1.tar.gz"
    ];
    sha256 = "146a1lfdmymgls99d9kbwz66gdwcj8jrf61dmrj98q7hg703knvc";
  };

  propagatedBuildInputs = [
    DBI
    Rcpp
    classInt
    s2
    units
  ];

  meta = {
    description = "R package sf";
    homepage = "https://cran.r-project.org/package=sf";
  };
}
