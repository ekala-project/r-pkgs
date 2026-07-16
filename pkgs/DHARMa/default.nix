{
  buildRPackage,
  fetchurl,
  Matrix,
  ape,
  gap,
  lme4,
  lmtest,
  qgam,
}:

buildRPackage {
  pname = "DHARMa";
  version = "0.4.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DHARMa_0.4.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DHARMa/DHARMa_0.4.7.tar.gz"
    ];
    sha256 = "0mfywr4pshnd13xs2zdhd8xvbc43qxaj075jhy8lrlg1agmc6gya";
  };

  propagatedBuildInputs = [
    Matrix
    ape
    gap
    lme4
    lmtest
    qgam
  ];

  meta = {
    description = "R package DHARMa";
    homepage = "https://cran.r-project.org/package=DHARMa";
  };
}
