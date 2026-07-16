{
  buildRPackage,
  fetchurl,
  Rcpp,
  broom,
  cpp11,
  dplyr,
  glmnet,
  lattice,
  mitml,
  nnet,
  rpart,
  tidyr,
}:

buildRPackage {
  pname = "mice";
  version = "3.19.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mice_3.19.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mice/mice_3.19.0.tar.gz"
    ];
    sha256 = "08fj364jjzr9fys3x5xibdyj5iz4fajvnc4yzqdg8hs0hg8mfzmq";
  };

  propagatedBuildInputs = [
    Rcpp
    broom
    cpp11
    dplyr
    glmnet
    lattice
    mitml
    nnet
    rpart
    tidyr
  ];

  meta = {
    description = "R package mice";
    homepage = "https://cran.r-project.org/package=mice";
  };
}
