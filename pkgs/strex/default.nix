{
  buildRPackage,
  fetchurl,
  checkmate,
  lifecycle,
  magrittr,
  rlang,
  stringi,
  stringr,
}:

buildRPackage {
  pname = "strex";
  version = "2.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/strex_2.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/strex/strex_2.0.1.tar.gz"
    ];
    sha256 = "1dd6gsx45rqwwdj25034hzqj3wg62v0zqrdv2xq8qx3ylixv0v9q";
  };

  propagatedBuildInputs = [
    checkmate
    lifecycle
    magrittr
    rlang
    stringi
    stringr
  ];

  meta = {
    description = "R package strex";
    homepage = "https://cran.r-project.org/package=strex";
  };
}
