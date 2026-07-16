{
  buildRPackage,
  fetchurl,
  MASS,
  fit_models,
  lattice,
  robustbase,
  rrcov,
}:

buildRPackage {
  pname = "robust";
  version = "0.7-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/robust_0.7-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/robust/robust_0.7-5.tar.gz"
    ];
    sha256 = "1k0s5i9r0lyz3qsw76dd514qclggqj9k2axmgj86df81j6f2mh53";
  };

  propagatedBuildInputs = [
    MASS
    fit_models
    lattice
    robustbase
    rrcov
  ];

  meta = {
    description = "R package robust";
    homepage = "https://cran.r-project.org/package=robust";
  };
}
