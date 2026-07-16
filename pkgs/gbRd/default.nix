{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "gbRd";
  version = "0.4.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gbRd_0.4.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gbRd/gbRd_0.4.12.tar.gz"
    ];
    sha256 = "0f13hg6nckl4aflwd49g4x2adxjfgah2yga70z1m8jszhhm1vka8";
  };

  meta = {
    description = "R package gbRd";
    homepage = "https://cran.r-project.org/package=gbRd";
  };
}
