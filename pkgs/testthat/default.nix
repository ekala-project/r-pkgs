{
  buildRPackage,
  fetchurl,
  R6,
  brio,
  callr,
  cli,
  desc,
  evaluate,
  jsonlite,
  lifecycle,
  magrittr,
  pkgload,
  praise,
  processx,
  ps,
  rlang,
  waldo,
  withr,
}:

buildRPackage {
  pname = "testthat";
  version = "3.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/testthat_3.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/testthat/testthat_3.3.2.tar.gz"
    ];
    sha256 = "024q8257dvvg8ff19287gqf4rhj4jnz05349nspj7dfwqfi2ybjx";
  };

  propagatedBuildInputs = [
    R6
    brio
    callr
    cli
    desc
    evaluate
    jsonlite
    lifecycle
    magrittr
    pkgload
    praise
    processx
    ps
    rlang
    waldo
    withr
  ];

  meta = {
    description = "R package testthat";
    homepage = "https://cran.r-project.org/package=testthat";
  };
}
