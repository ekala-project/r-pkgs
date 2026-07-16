{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mvtnorm";
  version = "1.3-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mvtnorm_1.3-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mvtnorm/mvtnorm_1.3-7.tar.gz"
    ];
    sha256 = "144fzrksgg12z7pvc0mh1kk75i2sng36j2d6py6q7msb41pfk4y3";
  };

  meta = {
    description = "R package mvtnorm";
    homepage = "https://cran.r-project.org/package=mvtnorm";
  };
}
