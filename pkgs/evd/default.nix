{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "evd";
  version = "2.3-7.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/evd_2.3-7.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/evd/evd_2.3-7.1.tar.gz"
    ];
    sha256 = "0y0vd2q3bjq3kwm5qlya57ijkpdipwfpgv7xs1014gdm6g639l8s";
  };

  meta = {
    description = "R package evd";
    homepage = "https://cran.r-project.org/package=evd";
  };
}
