{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "softImpute";
  version = "1.4-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/softImpute_1.4-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/softImpute/softImpute_1.4-3.tar.gz"
    ];
    sha256 = "1d6f3v409zb4h6ld7kcvf4fvld8x34sj22bdi207kcz7a1s4959n";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package softImpute";
    homepage = "https://cran.r-project.org/package=softImpute";
  };
}
