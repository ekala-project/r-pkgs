{
  buildRPackage,
  fetchurl,
  Matrix,
  ape,
  coda,
  corpcor,
  cubature,
  tensorA,
}:

buildRPackage {
  pname = "MCMCglmm";
  version = "2.36";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MCMCglmm_2.36.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MCMCglmm/MCMCglmm_2.36.tar.gz"
    ];
    sha256 = "1wca9x5c9x88cryj1pkhl73chmnbc1653j08faz7lp03z2mdkzv6";
  };

  propagatedBuildInputs = [
    Matrix
    ape
    coda
    corpcor
    cubature
    tensorA
  ];

  meta = {
    description = "R package MCMCglmm";
    homepage = "https://cran.r-project.org/package=MCMCglmm";
  };
}
