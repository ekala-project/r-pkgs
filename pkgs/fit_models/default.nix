{
  buildRPackage,
  fetchurl,
  lattice,
}:

buildRPackage {
  pname = "fit_models";
  version = "0.64";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fit_models_0.64.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fit_models/fit_models_0.64.tar.gz"
    ];
    sha256 = "1nk4x2q8cv79zcls61saf627ac0fci6jcrd6lmzk61asm2zhc27p";
  };

  propagatedBuildInputs = [
    lattice
  ];

  meta = {
    description = "R package fit_models";
    homepage = "https://cran.r-project.org/package=fit_models";
  };
}
