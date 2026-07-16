{
  buildRPackage,
  fetchurl,
  R6,
  cli,
  clipr,
  cpp11,
  crayon,
  glue,
  hms,
  lifecycle,
  rlang,
  tibble,
  tzdb,
  vroom,
  withr,
}:

buildRPackage {
  pname = "readr";
  version = "2.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/readr_2.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/readr/readr_2.2.0.tar.gz"
    ];
    sha256 = "0wzlm7whfnmjdq06aixaafyyka5mphfqkbz4xgajmqc3q6bxf9c0";
  };

  propagatedBuildInputs = [
    R6
    cli
    clipr
    cpp11
    crayon
    glue
    hms
    lifecycle
    rlang
    tibble
    tzdb
    vroom
    withr
  ];

  meta = {
    description = "R package readr";
    homepage = "https://cran.r-project.org/package=readr";
  };
}
