{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ca";
  version = "0.71.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ca_0.71.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ca/ca_0.71.1.tar.gz"
    ];
    sha256 = "095lk7p2b9835hc3a03c4019wg0baf0dhz6c2vqpaq1m9k4jy304";
  };

  meta = {
    description = "R package ca";
    homepage = "https://cran.r-project.org/package=ca";
  };
}
