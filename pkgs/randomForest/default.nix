{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "randomForest";
  version = "4.7-1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/randomForest_4.7-1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/randomForest/randomForest_4.7-1.2.tar.gz"
    ];
    sha256 = "04aan0wzkfdl2nh4z8fls7qhgz80xl7px7c4282dbfj8nqkk5lxa";
  };

  meta = {
    description = "R package randomForest";
    homepage = "https://cran.r-project.org/package=randomForest";
  };
}
