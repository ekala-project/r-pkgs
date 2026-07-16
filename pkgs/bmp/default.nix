{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "bmp";
  version = "0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bmp_0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bmp/bmp_0.3.1.tar.gz"
    ];
    sha256 = "0r5kqbhiimdjfsnmk354zgdw08y3whys338a73m1dxgr3c766v4y";
  };

  meta = {
    description = "R package bmp";
    homepage = "https://cran.r-project.org/package=bmp";
  };
}
