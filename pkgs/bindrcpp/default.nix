{
  buildRPackage,
  fetchurl,
  Rcpp,
  bindr,
}:

buildRPackage {
  pname = "bindrcpp";
  version = "0.2.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bindrcpp_0.2.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bindrcpp/bindrcpp_0.2.4.tar.gz"
    ];
    sha256 = "1jn3mhrc98w21kfp7wr2m9iqwzsrrzy9zgjfgkk6qrwwsz338f6j";
  };

  propagatedBuildInputs = [
    Rcpp
    bindr
  ];

  meta = {
    description = "R package bindrcpp";
    homepage = "https://cran.r-project.org/package=bindrcpp";
  };
}
