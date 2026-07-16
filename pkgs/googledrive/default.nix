{
  buildRPackage,
  fetchurl,
  cli,
  gargle,
  glue,
  httr,
  jsonlite,
  lifecycle,
  magrittr,
  pillar,
  purrr,
  rlang,
  tibble,
  uuid,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "googledrive";
  version = "2.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/googledrive_2.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/googledrive/googledrive_2.1.2.tar.gz"
    ];
    sha256 = "1alliln7gdmfcddcjkngqchmpxhlh0chyy2frbk81srkhd6yl29q";
  };

  propagatedBuildInputs = [
    cli
    gargle
    glue
    httr
    jsonlite
    lifecycle
    magrittr
    pillar
    purrr
    rlang
    tibble
    uuid
    vctrs
    withr
  ];

  meta = {
    description = "R package googledrive";
    homepage = "https://cran.r-project.org/package=googledrive";
  };
}
