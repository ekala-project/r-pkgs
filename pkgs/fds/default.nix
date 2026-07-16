{
  buildRPackage,
  fetchurl,
  RCurl,
  rainbow,
}:

buildRPackage {
  pname = "fds";
  version = "1.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fds_1.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fds/fds_1.9.tar.gz"
    ];
    sha256 = "03ivvx8iv1vvxp2zcggrvs1j3q9mm56winjw7q3x7aq5l4xgi1hx";
  };

  propagatedBuildInputs = [
    RCurl
    rainbow
  ];

  meta = {
    description = "R package fds";
    homepage = "https://cran.r-project.org/package=fds";
  };
}
