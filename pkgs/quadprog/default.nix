{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "quadprog";
  version = "1.5-8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/quadprog_1.5-8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/quadprog/quadprog_1.5-8.tar.gz"
    ];
    sha256 = "1ka9g8zak8sg4y2xbz93dfrldznlk9qpd4pq9z21cdcdn3b8s4i2";
  };

  meta = {
    description = "R package quadprog";
    homepage = "https://cran.r-project.org/package=quadprog";
  };
}
