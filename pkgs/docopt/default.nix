{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "docopt";
  version = "0.7.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/docopt_0.7.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/docopt/docopt_0.7.2.tar.gz"
    ];
    sha256 = "05z90kkm3qwyhrm20p0f0kyhb2rjidz6zh8chv44q1s6fc8r4dkq";
  };

  meta = {
    description = "R package docopt";
    homepage = "https://cran.r-project.org/package=docopt";
  };
}
