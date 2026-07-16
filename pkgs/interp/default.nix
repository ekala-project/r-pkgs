{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppEigen,
  deldir,
}:

buildRPackage {
  pname = "interp";
  version = "1.1-6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/interp_1.1-6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/interp/interp_1.1-6.tar.gz"
    ];
    sha256 = "0d6ddvm94113d9bjhghjsfbhgz44q0lkjc2l809dzv1lad708x1n";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppEigen
    deldir
  ];

  meta = {
    description = "R package interp";
    homepage = "https://cran.r-project.org/package=interp";
  };
}
