{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppParallel,
}:

buildRPackage {
  pname = "stringfish";
  version = "0.19.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stringfish_0.19.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stringfish/stringfish_0.19.0.tar.gz"
    ];
    sha256 = "1whs1i0rw2pr2kh3wvb4plg3jk7ncjnnx2msfckgzbc9vwvnf007";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppParallel
  ];

  meta = {
    description = "R package stringfish";
    homepage = "https://cran.r-project.org/package=stringfish";
  };
}
