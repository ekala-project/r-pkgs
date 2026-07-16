{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "multicool";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/multicool_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/multicool/multicool_1.0.1.tar.gz"
    ];
    sha256 = "07vcyp7yd1rzlldxzpzrdgifnw88z0maq2dgsqc218vyplgxwwmx";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package multicool";
    homepage = "https://cran.r-project.org/package=multicool";
  };
}
