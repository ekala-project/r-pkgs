{
  buildRPackage,
  fetchurl,
  MASS,
  mnormt,
  numDeriv,
  pbivnorm,
  quadprog,
}:

buildRPackage {
  pname = "lavaan";
  version = "0.6-21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lavaan_0.6-21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lavaan/lavaan_0.6-21.tar.gz"
    ];
    sha256 = "0kxmf62ks7rd3fpv73ksg0w8vkh4as6vpk7y5lk2cb9wq2ixk1pr";
  };

  propagatedBuildInputs = [
    MASS
    mnormt
    numDeriv
    pbivnorm
    quadprog
  ];

  meta = {
    description = "R package lavaan";
    homepage = "https://cran.r-project.org/package=lavaan";
  };
}
