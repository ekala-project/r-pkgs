{
  buildRPackage,
  fetchurl,
  Rcpp,
  pracma,
}:

buildRPackage {
  pname = "gsignal";
  version = "0.3-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gsignal_0.3-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gsignal/gsignal_0.3-7.tar.gz"
    ];
    sha256 = "1chkzv3bx1nas1yc6l5i3hgc8m40n1lm1y3c8577l8sqi89hnhs3";
  };

  propagatedBuildInputs = [
    Rcpp
    pracma
  ];

  meta = {
    description = "R package gsignal";
    homepage = "https://cran.r-project.org/package=gsignal";
  };
}
