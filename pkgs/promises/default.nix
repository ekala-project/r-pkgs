{
  buildRPackage,
  fetchurl,
  R6,
  fastmap,
  later,
  lifecycle,
  magrittr,
  otel,
  rlang,
}:

buildRPackage {
  pname = "promises";
  version = "1.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/promises_1.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/promises/promises_1.5.0.tar.gz"
    ];
    sha256 = "0zblciqxca8cf8j818x3jy3p6n4g72rg05nlmsb2j1yccm0gss5v";
  };

  propagatedBuildInputs = [
    R6
    fastmap
    later
    lifecycle
    magrittr
    otel
    rlang
  ];

  meta = {
    description = "R package promises";
    homepage = "https://cran.r-project.org/package=promises";
  };
}
