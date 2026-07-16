{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "elliptic";
  version = "1.5-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/elliptic_1.5-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/elliptic/elliptic_1.5-1.tar.gz"
    ];
    sha256 = "00f97gwjpsywdzd0s6cx6ncklsg5wakzahlyi106wb0sgbgzvv76";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package elliptic";
    homepage = "https://cran.r-project.org/package=elliptic";
  };
}
