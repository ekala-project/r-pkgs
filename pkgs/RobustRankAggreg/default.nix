{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RobustRankAggreg";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RobustRankAggreg_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RobustRankAggreg/RobustRankAggreg_1.2.1.tar.gz"
    ];
    sha256 = "0p2nbgxv2132gcyx7zq2gzl6ipsxndx64i7y8v9nh5awcdy8v44p";
  };

  meta = {
    description = "R package RobustRankAggreg";
    homepage = "https://cran.r-project.org/package=RobustRankAggreg";
  };
}
