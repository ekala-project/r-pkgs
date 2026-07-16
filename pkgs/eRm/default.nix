{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  colorspace,
  lattice,
  psych,
}:

buildRPackage {
  pname = "eRm";
  version = "1.0-10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/eRm_1.0-10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/eRm/eRm_1.0-10.tar.gz"
    ];
    sha256 = "0lnnvvrpk7gwpgzqz0yl9kwklhwm4hkzkp45mzr8x4gh5xffsig7";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    colorspace
    lattice
    psych
  ];

  meta = {
    description = "R package eRm";
    homepage = "https://cran.r-project.org/package=eRm";
  };
}
