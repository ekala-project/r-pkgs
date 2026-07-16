{
  buildRPackage,
  fetchurl,
  Matrix,
  Rcpp,
}:

buildRPackage {
  pname = "apcluster";
  version = "1.4.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/apcluster_1.4.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/apcluster/apcluster_1.4.14.tar.gz"
    ];
    sha256 = "0hir0v2cmyy05aykml86sis38mh4n0n0im0lgd9nblfjnnrlvhfs";
  };

  propagatedBuildInputs = [
    Matrix
    Rcpp
  ];

  meta = {
    description = "R package apcluster";
    homepage = "https://cran.r-project.org/package=apcluster";
  };
}
