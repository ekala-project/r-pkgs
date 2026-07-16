{
  buildRPackage,
  fetchurl,
  MASS,
  OpenMx,
  boot,
  lavaan,
  mnormt,
  nlme,
  sem,
  semTools,
}:

buildRPackage {
  pname = "MBESS";
  version = "4.9.42";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MBESS_4.9.42.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MBESS/MBESS_4.9.42.tar.gz"
    ];
    sha256 = "1cpqr614qk4vjycskx6wk7rmdg3phd8vq9zv98fj78qlf6zlp5r0";
  };

  propagatedBuildInputs = [
    MASS
    OpenMx
    boot
    lavaan
    mnormt
    nlme
    sem
    semTools
  ];

  meta = {
    description = "R package MBESS";
    homepage = "https://cran.r-project.org/package=MBESS";
  };
}
