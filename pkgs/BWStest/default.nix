{
  buildRPackage,
  fetchurl,
  Rcpp,
  memoise,
}:

buildRPackage {
  pname = "BWStest";
  version = "0.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BWStest_0.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BWStest/BWStest_0.2.3.tar.gz"
    ];
    sha256 = "1chlszmshda84000jj4q5j2swflj512vfj3h97361aphzhkwri2b";
  };

  propagatedBuildInputs = [
    Rcpp
    memoise
  ];

  meta = {
    description = "R package BWStest";
    homepage = "https://cran.r-project.org/package=BWStest";
  };
}
