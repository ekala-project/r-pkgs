{
  buildRPackage,
  fetchurl,
  Matrix,
  cli,
  cpp11,
  lifecycle,
  magrittr,
  pkgconfig,
  rlang,
  vctrs,
}:

buildRPackage {
  pname = "igraph";
  version = "2.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/igraph_2.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/igraph/igraph_2.3.1.tar.gz"
    ];
    sha256 = "1fjvlsr5kwfv5mvm62fz3cvdf6afm4w84hgd185sxn7sbz3c2078";
  };

  propagatedBuildInputs = [
    Matrix
    cli
    cpp11
    lifecycle
    magrittr
    pkgconfig
    rlang
    vctrs
  ];

  meta = {
    description = "R package igraph";
    homepage = "https://cran.r-project.org/package=igraph";
  };
}
