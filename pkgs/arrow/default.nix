{
  buildRPackage,
  fetchurl,
  R6,
  assertthat,
  bit64,
  cpp11,
  glue,
  purrr,
  rlang,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "arrow";
  version = "24.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/arrow_24.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/arrow/arrow_24.0.0.tar.gz"
    ];
    sha256 = "1rvkv787lwg56m8mpkfv9ycwgj7il0gvldphna2dcfa5an4shav3";
  };

  propagatedBuildInputs = [
    R6
    assertthat
    bit64
    cpp11
    glue
    purrr
    rlang
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package arrow";
    homepage = "https://cran.r-project.org/package=arrow";
  };
}
