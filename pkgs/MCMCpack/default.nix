{
  buildRPackage,
  fetchurl,
  MASS,
  coda,
  lattice,
  mcmc,
  quantreg,
}:

buildRPackage {
  pname = "MCMCpack";
  version = "1.7-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MCMCpack_1.7-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MCMCpack/MCMCpack_1.7-1.tar.gz"
    ];
    sha256 = "0ac5nllnsdbvbf0l578dab1i24q3kxr0dpkch8w7q694cds4c2rv";
  };

  propagatedBuildInputs = [
    MASS
    coda
    lattice
    mcmc
    quantreg
  ];

  meta = {
    description = "R package MCMCpack";
    homepage = "https://cran.r-project.org/package=MCMCpack";
  };
}
