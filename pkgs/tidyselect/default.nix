{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  lifecycle,
  rlang,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "tidyselect";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tidyselect_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tidyselect/tidyselect_1.2.1.tar.gz"
    ];
    sha256 = "0g4h8mfm5ima0izy4h0c65q478473xsj4hskh15dzg5z1fx9g7hn";
  };

  propagatedBuildInputs = [
    cli
    glue
    lifecycle
    rlang
    vctrs
    withr
  ];

  meta = {
    description = "R package tidyselect";
    homepage = "https://cran.r-project.org/package=tidyselect";
  };
}
