{
  buildRPackage,
  fetchurl,
  ADGofTest,
  Matrix,
  cluster,
  colorspace,
  gsl,
  lattice,
  mvtnorm,
  numDeriv,
  pcaPP,
  pspline,
  stabledist,
}:

buildRPackage {
  pname = "copula";
  version = "1.1-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/copula_1.1-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/copula/copula_1.1-7.tar.gz"
    ];
    sha256 = "002vmjmik84p5sgmg0p1wic65hcqf8cx00rad0lyrlmmh5kbv269";
  };

  propagatedBuildInputs = [
    ADGofTest
    Matrix
    cluster
    colorspace
    gsl
    lattice
    mvtnorm
    numDeriv
    pcaPP
    pspline
    stabledist
  ];

  meta = {
    description = "R package copula";
    homepage = "https://cran.r-project.org/package=copula";
  };
}
