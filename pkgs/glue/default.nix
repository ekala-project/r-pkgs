{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "glue";
  version = "1.8.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/glue_1.8.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/glue/glue_1.8.1.tar.gz"
    ];
    sha256 = "08m1g1a43vzc87zkhq6zci60szz930id22zbkhcmqggw7rfr0m8w";
  };

  meta = {
    description = "R package glue";
    homepage = "https://cran.r-project.org/package=glue";
  };
}
