{
  buildRPackage,
  fetchurl,
  Rcpp,
  RcppArmadillo,
  Rsolnp,
  lavaan,
}:

buildRPackage {
  pname = "regsem";
  version = "1.9.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/regsem_1.9.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/regsem/regsem_1.9.5.tar.gz"
    ];
    sha256 = "0lvsy7byrhiizyhwnwr22v8g36735nb0liyzl1nzk0py9rjbv4kk";
  };

  propagatedBuildInputs = [
    Rcpp
    RcppArmadillo
    Rsolnp
    lavaan
  ];

  meta = {
    description = "R package regsem";
    homepage = "https://cran.r-project.org/package=regsem";
  };
}
