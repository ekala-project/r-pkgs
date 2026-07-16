{
  buildRPackage,
  fetchurl,
  Matrix,
  cvar,
  fBasics,
  fastICA,
  timeDate,
  timeSeries,
}:

buildRPackage {
  pname = "fGarch";
  version = "4052.93";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fGarch_4052.93.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fGarch/fGarch_4052.93.tar.gz"
    ];
    sha256 = "1kfyvfcx48p53wc2mz67ibb94scs6q4393cs5jhanfihy9rydn7c";
  };

  propagatedBuildInputs = [
    Matrix
    cvar
    fBasics
    fastICA
    timeDate
    timeSeries
  ];

  meta = {
    description = "R package fGarch";
    homepage = "https://cran.r-project.org/package=fGarch";
  };
}
