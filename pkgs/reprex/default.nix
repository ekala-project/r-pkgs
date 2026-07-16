{
  buildRPackage,
  fetchurl,
  callr,
  cli,
  clipr,
  fs,
  glue,
  knitr,
  lifecycle,
  rlang,
  rmarkdown,
  rstudioapi,
  withr,
}:

buildRPackage {
  pname = "reprex";
  version = "2.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/reprex_2.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/reprex/reprex_2.1.1.tar.gz"
    ];
    sha256 = "174705043b90phm6aj5yb199pn1clipsnqgvhskhxybypj63cq68";
  };

  propagatedBuildInputs = [
    callr
    cli
    clipr
    fs
    glue
    knitr
    lifecycle
    rlang
    rmarkdown
    rstudioapi
    withr
  ];

  meta = {
    description = "R package reprex";
    homepage = "https://cran.r-project.org/package=reprex";
  };
}
