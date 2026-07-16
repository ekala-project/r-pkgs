{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "dichromat";
  version = "2.0-0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dichromat_2.0-0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dichromat/dichromat_2.0-0.1.tar.gz"
    ];
    sha256 = "10b0avdar3d1y8x2ya3x5kqxqg0z0mq872hdzvc1nn4amplph1d1";
  };

  meta = {
    description = "R package dichromat";
    homepage = "https://cran.r-project.org/package=dichromat";
  };
}
