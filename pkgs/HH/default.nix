{
  buildRPackage,
  fetchurl,
  Hmisc,
  RColorBrewer,
  Rmpfr,
  abind,
  colorspace,
  gridExtra,
  lattice,
  latticeExtra,
  leaps,
  multcomp,
  reshape2,
  shiny,
  vcd,
}:

buildRPackage {
  pname = "HH";
  version = "3.1-53";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/HH_3.1-53.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/HH/HH_3.1-53.tar.gz"
    ];
    sha256 = "14lqyxnpx6dis5s40yrzrdqq5qvqspibzssr2bh3jkkfykjasxmj";
  };

  propagatedBuildInputs = [
    Hmisc
    RColorBrewer
    Rmpfr
    abind
    colorspace
    gridExtra
    lattice
    latticeExtra
    leaps
    multcomp
    reshape2
    shiny
    vcd
  ];

  meta = {
    description = "R package HH";
    homepage = "https://cran.r-project.org/package=HH";
  };
}
