{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "AUC";
  version = "0.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/AUC_0.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/AUC/AUC_0.3.2.tar.gz"
    ];
    sha256 = "07xf47kypqbsg2mixmq6mnh4s89aqan9bgl6kfv6lbx8ajv2asw3";
  };

  meta = {
    description = "R package AUC";
    homepage = "https://cran.r-project.org/package=AUC";
  };
}
