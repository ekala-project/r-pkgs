{
  buildRPackage,
  fetchurl,
  rmarkdown,
}:

buildRPackage {
  pname = "prettydoc";
  version = "0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/prettydoc_0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/prettydoc/prettydoc_0.4.1.tar.gz"
    ];
    sha256 = "0aa89jnqhz0l69inrgm1f1riq5bm3ksb8wjl8d4x2f320adsd50h";
  };

  propagatedBuildInputs = [
    rmarkdown
  ];

  meta = {
    description = "R package prettydoc";
    homepage = "https://cran.r-project.org/package=prettydoc";
  };
}
