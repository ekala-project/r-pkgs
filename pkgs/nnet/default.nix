{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "nnet";
  version = "7.3-20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nnet_7.3-20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nnet/nnet_7.3-20.tar.gz"
    ];
    sha256 = "0mdmnafhjas0cd5ac5c2pb6nzii3m9dqgr7y3fycyqdi1rzf2cwg";
  };

  meta = {
    description = "R package nnet";
    homepage = "https://cran.r-project.org/package=nnet";
  };
}
