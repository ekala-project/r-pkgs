{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RInside";
  version = "0.2.19";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RInside_0.2.19.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RInside/RInside_0.2.19.tar.gz"
    ];
    sha256 = "090zramd77305kvpsv3n85jjsmcndn2faf01cmqwaq0l7wx880q7";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RInside";
    homepage = "https://cran.r-project.org/package=RInside";
  };
}
