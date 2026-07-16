{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "RcppTOML";
  version = "0.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppTOML_0.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppTOML/RcppTOML_0.2.3.tar.gz"
    ];
    sha256 = "0vwjyn68cildb6rs21jjahg246znjw8pjzg6cmqfyasn7hjr9m9f";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package RcppTOML";
    homepage = "https://cran.r-project.org/package=RcppTOML";
  };
}
