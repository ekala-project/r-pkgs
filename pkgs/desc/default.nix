{
  buildRPackage,
  fetchurl,
  R6,
  cli,
}:

buildRPackage {
  pname = "desc";
  version = "1.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/desc_1.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/desc/desc_1.4.3.tar.gz"
    ];
    sha256 = "09ig14bm68cps6d1mrmj6hhjr01i6gz1ri35qpkwk3yp7nkqsijl";
  };

  propagatedBuildInputs = [
    R6
    cli
  ];

  meta = {
    description = "R package desc";
    homepage = "https://cran.r-project.org/package=desc";
  };
}
