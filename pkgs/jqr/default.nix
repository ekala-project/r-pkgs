{
  buildRPackage,
  fetchurl,
  lazyeval,
  magrittr,
}:

buildRPackage {
  pname = "jqr";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/jqr_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/jqr/jqr_1.4.0.tar.gz"
    ];
    sha256 = "0bnhk3p0yb30245g8fglrc88nk8xrc2k86q1wa5v3cw3rfpyhac9";
  };

  propagatedBuildInputs = [
    lazyeval
    magrittr
  ];

  meta = {
    description = "R package jqr";
    homepage = "https://cran.r-project.org/package=jqr";
  };
}
