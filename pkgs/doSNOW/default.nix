{
  buildRPackage,
  fetchurl,
  foreach,
  iterators,
  snow,
}:

buildRPackage {
  pname = "doSNOW";
  version = "1.0.20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/doSNOW_1.0.20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/doSNOW/doSNOW_1.0.20.tar.gz"
    ];
    sha256 = "1f5v0k2w0b2478p6iqa3hn2lwd1x3rzc348n57nd38ka2vnsnz4i";
  };

  propagatedBuildInputs = [
    foreach
    iterators
    snow
  ];

  meta = {
    description = "R package doSNOW";
    homepage = "https://cran.r-project.org/package=doSNOW";
  };
}
