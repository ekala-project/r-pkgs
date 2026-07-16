{
  buildRPackage,
  fetchurl,
  Matrix,
  mvtnorm,
  sn,
}:

buildRPackage {
  pname = "TFisher";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/TFisher_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/TFisher/TFisher_0.2.0.tar.gz"
    ];
    sha256 = "0vz74ww1lf1prfwz74hfsi3a8nzq8ss7aqjr85c1d87vss2796xx";
  };

  propagatedBuildInputs = [
    Matrix
    mvtnorm
    sn
  ];

  meta = {
    description = "R package TFisher";
    homepage = "https://cran.r-project.org/package=TFisher";
  };
}
