{
  buildRPackage,
  fetchurl,
  R6,
  Rcpp,
  later,
  promises,
}:

buildRPackage {
  pname = "httpuv";
  version = "1.6.17";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/httpuv_1.6.17.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/httpuv/httpuv_1.6.17.tar.gz"
    ];
    sha256 = "0wv23lna87cyj19332xy5dn7ik1l8hsbhss44b8brf266phhd1fi";
  };

  propagatedBuildInputs = [
    R6
    Rcpp
    later
    promises
  ];

  meta = {
    description = "R package httpuv";
    homepage = "https://cran.r-project.org/package=httpuv";
  };
}
