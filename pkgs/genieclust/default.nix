{
  buildRPackage,
  fetchurl,
  Rcpp,
  deadwood,
}:

buildRPackage {
  pname = "genieclust";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/genieclust_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/genieclust/genieclust_1.3.0.tar.gz"
    ];
    sha256 = "01lgrgk1q9irvqm4i91lclpm3l2sw49izwmhwrd1kv1dwkagibnf";
  };

  propagatedBuildInputs = [
    Rcpp
    deadwood
  ];

  meta = {
    description = "R package genieclust";
    homepage = "https://cran.r-project.org/package=genieclust";
  };
}
