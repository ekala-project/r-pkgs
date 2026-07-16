{
  buildRPackage,
  fetchurl,
  car,
  lmtest,
  zoo,
}:

buildRPackage {
  pname = "dynlm";
  version = "0.3-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dynlm_0.3-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dynlm/dynlm_0.3-6.tar.gz"
    ];
    sha256 = "1g8qsb5m69yn35sm0shd97vbnbpqfkjkd7lbkwch1gpfxkld53zq";
  };

  propagatedBuildInputs = [
    car
    lmtest
    zoo
  ];

  meta = {
    description = "R package dynlm";
    homepage = "https://cran.r-project.org/package=dynlm";
  };
}
