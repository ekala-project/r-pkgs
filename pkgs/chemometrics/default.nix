{
  buildRPackage,
  fetchurl,
  MASS,
  class,
  e1071,
  lars,
  mclust,
  nnet,
  pcaPP,
  pls,
  robustbase,
  rpart,
  som,
}:

buildRPackage {
  pname = "chemometrics";
  version = "1.4.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/chemometrics_1.4.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/chemometrics/chemometrics_1.4.4.tar.gz"
    ];
    sha256 = "10d8g8sgck6v2cgkv988yiawv9vrziyqsrhagmkzf7rjpqgdn3px";
  };

  propagatedBuildInputs = [
    MASS
    class
    e1071
    lars
    mclust
    nnet
    pcaPP
    pls
    robustbase
    rpart
    som
  ];

  meta = {
    description = "R package chemometrics";
    homepage = "https://cran.r-project.org/package=chemometrics";
  };
}
