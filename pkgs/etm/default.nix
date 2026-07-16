{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  data_table,
  lattice,
  survival,
}:

buildRPackage {
  pname = "etm";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/etm_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/etm/etm_1.1.2.tar.gz"
    ];
    sha256 = "0rbd5acvqdn4704hzsndim11f98ippiscaxhrga1660zm9z8q9xj";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    data_table
    lattice
    survival
  ];

  meta = {
    description = "R package etm";
    homepage = "https://cran.r-project.org/package=etm";
  };
}
