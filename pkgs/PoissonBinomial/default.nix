{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "PoissonBinomial";
  version = "1.2.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PoissonBinomial_1.2.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PoissonBinomial/PoissonBinomial_1.2.8.tar.gz"
    ];
    sha256 = "0j6h8jlmml3kdhi66qlsk26dg15lvwhbld6sqjhqswpd5wv2pp3n";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package PoissonBinomial";
    homepage = "https://cran.r-project.org/package=PoissonBinomial";
  };
}
