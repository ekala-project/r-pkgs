{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  minpack_lm,
  rgl,
  robustbase,
}:

buildRPackage {
  pname = "qpcR";
  version = "1.4-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qpcR_1.4-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qpcR/qpcR_1.4-2.tar.gz"
    ];
    sha256 = "04q4j249xajp6b3nwg6gzrvyc3jffs14xfzg3nwms12hg4c3fvcz";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    minpack_lm
    rgl
    robustbase
  ];

  meta = {
    description = "R package qpcR";
    homepage = "https://cran.r-project.org/package=qpcR";
  };
}
