{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Rcpp";
  version = "1.1.1-1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rcpp_1.1.1-1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rcpp/Rcpp_1.1.1-1.1.tar.gz"
    ];
    sha256 = "1qgvymjra31r0078cbp900cpldm6xb1p86zk2niqq308wkzdbr9j";
  };

  meta = {
    description = "R package Rcpp";
    homepage = "https://cran.r-project.org/package=Rcpp";
  };
}
