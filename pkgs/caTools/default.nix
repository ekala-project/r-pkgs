{
  buildRPackage,
  fetchurl,
  bitops,
}:

buildRPackage {
  pname = "caTools";
  version = "1.18.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/caTools_1.18.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/caTools/caTools_1.18.3.tar.gz"
    ];
    sha256 = "1n380hnddj29nrzsqf462a1h3xy55qk4q45i5287ffd2lx13j6z7";
  };

  propagatedBuildInputs = [
    bitops
  ];

  meta = {
    description = "R package caTools";
    homepage = "https://cran.r-project.org/package=caTools";
  };
}
