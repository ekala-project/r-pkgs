{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "yaImpute";
  version = "1.0-36";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/yaImpute_1.0-36.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/yaImpute/yaImpute_1.0-36.tar.gz"
    ];
    sha256 = "1qx61rmwn2lliwxzc4vi255sb4cvmp55rjdlfqzqx3ll8ym28nfq";
  };

  meta = {
    description = "R package yaImpute";
    homepage = "https://cran.r-project.org/package=yaImpute";
  };
}
