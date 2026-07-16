{
  buildRPackage,
  fetchurl,
  lme4,
}:

buildRPackage {
  pname = "blme";
  version = "1.0-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/blme_1.0-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/blme/blme_1.0-7.tar.gz"
    ];
    sha256 = "1yhyyaiiyqd413nfrcang6bkccms9cr64375x7yb5ah6w4fbjisn";
  };

  propagatedBuildInputs = [
    lme4
  ];

  meta = {
    description = "R package blme";
    homepage = "https://cran.r-project.org/package=blme";
  };
}
