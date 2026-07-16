{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  lifecycle,
  magrittr,
  rlang,
  stringi,
  vctrs,
}:

buildRPackage {
  pname = "stringr";
  version = "1.6.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stringr_1.6.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stringr/stringr_1.6.0.tar.gz"
    ];
    sha256 = "0r006wzcxhyqgix5q094hranqcfj8jbjpqjrhs4fp9w0z5fzrwi4";
  };

  propagatedBuildInputs = [
    cli
    glue
    lifecycle
    magrittr
    rlang
    stringi
    vctrs
  ];

  meta = {
    description = "R package stringr";
    homepage = "https://cran.r-project.org/package=stringr";
  };
}
