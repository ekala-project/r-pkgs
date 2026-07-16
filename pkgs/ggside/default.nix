{
  buildRPackage,
  fetchurl,
  S7,
  cli,
  ggplot2,
  glue,
  gtable,
  lifecycle,
  rlang,
  scales,
  tibble,
  vctrs,
}:

buildRPackage {
  pname = "ggside";
  version = "0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggside_0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggside/ggside_0.4.1.tar.gz"
    ];
    sha256 = "0xr7i9dbrv431k56ymaz7mfyaa25qsrkps6p83g50phf5wg9q6a6";
  };

  propagatedBuildInputs = [
    S7
    cli
    ggplot2
    glue
    gtable
    lifecycle
    rlang
    scales
    tibble
    vctrs
  ];

  meta = {
    description = "R package ggside";
    homepage = "https://cran.r-project.org/package=ggside";
  };
}
