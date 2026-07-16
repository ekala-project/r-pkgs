{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  bdsmatrix,
  lattice,
  mvtnorm,
  numDeriv,
}:

buildRPackage {
  pname = "bbmle";
  version = "1.0.25.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bbmle_1.0.25.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bbmle/bbmle_1.0.25.1.tar.gz"
    ];
    sha256 = "02xnfmjr5ax5pc69jkxmygkwvb68flrf1x8pxfw0hk7y37w0qanr";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    bdsmatrix
    lattice
    mvtnorm
    numDeriv
  ];

  meta = {
    description = "R package bbmle";
    homepage = "https://cran.r-project.org/package=bbmle";
  };
}
