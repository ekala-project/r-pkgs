{
  buildRPackage,
  fetchurl,
  MASS,
  ape,
  mvtnorm,
}:

buildRPackage {
  pname = "caper";
  version = "1.0.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/caper_1.0.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/caper/caper_1.0.4.tar.gz"
    ];
    sha256 = "193970mnsshj5bqyym7bbfxag96mv0jd1q3yqk9wdsv9iqbcw981";
  };

  propagatedBuildInputs = [
    MASS
    ape
    mvtnorm
  ];

  meta = {
    description = "R package caper";
    homepage = "https://cran.r-project.org/package=caper";
  };
}
