{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppProgress,
  backports,
  chk,
  rlang,
}:

buildRPackage {
  pname = "MatchIt";
  version = "4.7.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/MatchIt_4.7.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/MatchIt/MatchIt_4.7.2.tar.gz"
    ];
    sha256 = "1bbqh4alm725852gspc8fqygvqi256pxdiykzc5c958h3ljymdgi";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppProgress
    backports
    chk
    rlang
  ];

  meta = {
    description = "R package MatchIt";
    homepage = "https://cran.r-project.org/package=MatchIt";
  };
}
