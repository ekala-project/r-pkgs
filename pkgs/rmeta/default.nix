{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rmeta";
  version = "3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rmeta_3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rmeta/rmeta_3.0.tar.gz"
    ];
    sha256 = "0vkbnxp579v8zmcv1isdbzj5swpr6fq17zwparxcvzswjc2x9ydr";
  };

  meta = {
    description = "R package rmeta";
    homepage = "https://cran.r-project.org/package=rmeta";
  };
}
