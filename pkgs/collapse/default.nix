{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "collapse";
  version = "2.1.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/collapse_2.1.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/collapse/collapse_2.1.7.tar.gz"
    ];
    sha256 = "0y9fma6fk43n4cza7wyxxx3w9v40y7d1jffca47d552x794rxypq";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package collapse";
    homepage = "https://cran.r-project.org/package=collapse";
  };
}
