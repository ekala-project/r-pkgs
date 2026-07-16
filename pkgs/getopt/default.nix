{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "getopt";
  version = "1.21.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/getopt_1.21.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/getopt/getopt_1.21.1.tar.gz"
    ];
    sha256 = "18cdbcixk58bda5l08h76bljqydjdccy3qyy02al4lzi002kj6r9";
  };

  meta = {
    description = "R package getopt";
    homepage = "https://cran.r-project.org/package=getopt";
  };
}
