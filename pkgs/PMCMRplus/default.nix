{
  buildRPackage,
  fetchurl,
  BWStest,
  MASS,
  Rmpfr,
  SuppDists,
  gmp,
  kSamples,
  multcompView,
  mvtnorm,
}:

buildRPackage {
  pname = "PMCMRplus";
  version = "1.9.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PMCMRplus_1.9.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PMCMRplus/PMCMRplus_1.9.12.tar.gz"
    ];
    sha256 = "1ccmwpkr7vib7fflwmi45bgazsarnys9j1bsj10vn0kqw2ya3hay";
  };

  propagatedBuildInputs = [
    BWStest
    MASS
    Rmpfr
    SuppDists
    gmp
    kSamples
    multcompView
    mvtnorm
  ];

  meta = {
    description = "R package PMCMRplus";
    homepage = "https://cran.r-project.org/package=PMCMRplus";
  };
}
