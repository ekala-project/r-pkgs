{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "calculus";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/calculus_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/calculus/calculus_1.1.0.tar.gz"
    ];
    sha256 = "161i2cjb7872g4qfhjxh08273wpvsss4lwfkavlqal1f1cv90php";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package calculus";
    homepage = "https://cran.r-project.org/package=calculus";
  };
}
