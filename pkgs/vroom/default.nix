{
  buildRPackage,
  fetchurl,
  bit64,
  cli,
  cpp11,
  crayon,
  glue,
  hms,
  lifecycle,
  progress,
  rlang,
  tibble,
  tidyselect,
  tzdb,
  vctrs,
  withr,
}:

buildRPackage {
  pname = "vroom";
  version = "1.7.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vroom_1.7.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vroom/vroom_1.7.1.tar.gz"
    ];
    sha256 = "14473q087fwd76idbl625zwhgr0rv6qlnr86qmjfxhysgwigcr3x";
  };

  propagatedBuildInputs = [
    bit64
    cli
    cpp11
    crayon
    glue
    hms
    lifecycle
    progress
    rlang
    tibble
    tidyselect
    tzdb
    vctrs
    withr
  ];

  meta = {
    description = "R package vroom";
    homepage = "https://cran.r-project.org/package=vroom";
  };
}
