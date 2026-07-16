{
  buildRPackage,
  fetchurl,
  MASS,
  car,
  gtools,
  multcomp,
  plotrix,
  scales,
}:

buildRPackage {
  pname = "drc";
  version = "3.0-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/drc_3.0-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/drc/drc_3.0-1.tar.gz"
    ];
    sha256 = "0c8xn8ripzq270hy8d16fcnx02l02alddznd7fqwk3jyi6113h1y";
  };

  propagatedBuildInputs = [
    MASS
    car
    gtools
    multcomp
    plotrix
    scales
  ];

  meta = {
    description = "R package drc";
    homepage = "https://cran.r-project.org/package=drc";
  };
}
