{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "goftest";
  version = "1.2-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/goftest_1.2-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/goftest/goftest_1.2-3.tar.gz"
    ];
    sha256 = "06bz6k7smr4jbvzmb73qc5fkf4my59w5gbl18wlmpkkymsv78prs";
  };

  meta = {
    description = "R package goftest";
    homepage = "https://cran.r-project.org/package=goftest";
  };
}
