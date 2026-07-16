{
  buildRPackage,
  fetchurl,
  Matrix,
  digest,
  mathjaxr,
  metadat,
  nlme,
  numDeriv,
  pbapply,
}:

buildRPackage {
  pname = "metafor";
  version = "5.0-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/metafor_5.0-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/metafor/metafor_5.0-1.tar.gz"
    ];
    sha256 = "067yzgrb97k55m4hqw1jzsrryscb9nk1jy4g34hpsfj5plvir62l";
  };

  propagatedBuildInputs = [
    Matrix
    digest
    mathjaxr
    metadat
    nlme
    numDeriv
    pbapply
  ];

  meta = {
    description = "R package metafor";
    homepage = "https://cran.r-project.org/package=metafor";
  };
}
