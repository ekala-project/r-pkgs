{
  buildRPackage,
  fetchurl,
  cli,
  glue,
  rlang,
  tibble,
  vctrs,
}:

buildRPackage {
  pname = "modelenv";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/modelenv_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/modelenv/modelenv_0.2.0.tar.gz"
    ];
    sha256 = "1h8vksmvdj5nv6cswr0c21fh1jcryw1lvpq9pn0n771pxybhxqbl";
  };

  propagatedBuildInputs = [
    cli
    glue
    rlang
    tibble
    vctrs
  ];

  meta = {
    description = "R package modelenv";
    homepage = "https://cran.r-project.org/package=modelenv";
  };
}
