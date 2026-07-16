{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
  RcppEigen,
  future,
  future_apply,
  generics,
  lifecycle,
  progressr,
  rlang,
  sp,
  spam,
}:

buildRPackage {
  pname = "SeuratObject";
  version = "5.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/SeuratObject_5.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/SeuratObject/SeuratObject_5.4.0.tar.gz"
    ];
    sha256 = "0mpj10cxh29gcmhny1kxm937b8zmi161wkpf44h325aihkvli9qi";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
    RcppEigen
    future
    future_apply
    generics
    lifecycle
    progressr
    rlang
    sp
    spam
  ];

  meta = {
    description = "R package SeuratObject";
    homepage = "https://cran.r-project.org/package=SeuratObject";
  };
}
