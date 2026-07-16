{
  buildRPackage,
  fetchurl,
  R6,
  digest,
}:

buildRPackage {
  pname = "storr";
  version = "1.2.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/storr_1.2.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/storr/storr_1.2.6.tar.gz"
    ];
    sha256 = "1spfnizyjdn1idl293k07zcgb32h2wi444vas8hwvm7ngbc6m9y5";
  };

  propagatedBuildInputs = [
    R6
    digest
  ];

  meta = {
    description = "R package storr";
    homepage = "https://cran.r-project.org/package=storr";
  };
}
