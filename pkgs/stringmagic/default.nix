{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "stringmagic";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stringmagic_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stringmagic/stringmagic_1.2.0.tar.gz"
    ];
    sha256 = "180kzm9gbl4jr9vwh58r9qyp78svmakh68zkhxfb43bxk3zq20m6";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package stringmagic";
    homepage = "https://cran.r-project.org/package=stringmagic";
  };
}
