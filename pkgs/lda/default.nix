{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "lda";
  version = "1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lda_1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lda/lda_1.5.2.tar.gz"
    ];
    sha256 = "1m0g2mz7rhjsp6pm784qjngzrb6kp69zjb85fflm48q0drw59lwm";
  };

  meta = {
    description = "R package lda";
    homepage = "https://cran.r-project.org/package=lda";
  };
}
