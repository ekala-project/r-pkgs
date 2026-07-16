{
  buildRPackage,
  fetchurl,
  cellranger,
  cli,
  curl,
  gargle,
  glue,
  googledrive,
  httr,
  ids,
  lifecycle,
  magrittr,
  purrr,
  rematch2,
  rlang,
  tibble,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "googlesheets4";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/googlesheets4_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/googlesheets4/googlesheets4_1.1.2.tar.gz"
    ];
    sha256 = "1ndd9y8sd6mp5vrjwj5ikx7lgj6y5g0my7flyrx5lh0s0pfxbabv";
  };

  propagatedBuildInputs = [
    cellranger
    cli
    curl
    gargle
    glue
    googledrive
    httr
    ids
    lifecycle
    magrittr
    purrr
    rematch2
    rlang
    tibble
    vctrs
    withr
  ];

  meta = {
    description = "R package googlesheets4";
    homepage = "https://cran.r-project.org/package=googlesheets4";
  };
}
