{
  buildRPackage,
  fetchurl,
  CompQuadForm,
  dplyr,
  ggplot2,
  lme4,
  magrittr,
  metabook,
  metadat,
  metafor,
  purrr,
  readr,
  rlang,
  scales,
  stringr,
  tibble,
  xml2,
}:

buildRPackage {
  pname = "meta";
  version = "8.3-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/meta_8.3-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/meta/meta_8.3-0.tar.gz"
    ];
    sha256 = "06x7byw6rc3sv6hn0ygr4l672w4pbmfc6h3zda0rigz74glszcwh";
  };

  propagatedBuildInputs = [
    CompQuadForm
    dplyr
    ggplot2
    lme4
    magrittr
    metabook
    metadat
    metafor
    purrr
    readr
    rlang
    scales
    stringr
    tibble
    xml2
  ];

  meta = {
    description = "R package meta";
    homepage = "https://cran.r-project.org/package=meta";
  };
}
