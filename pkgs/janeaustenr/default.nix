{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "janeaustenr";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/janeaustenr_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/janeaustenr/janeaustenr_1.0.0.tar.gz"
    ];
    sha256 = "1ap8p1lpbj2wz90mpf1vbyzhv2spzv03bi8lwzpsir2y77hjxhxl";
  };

  meta = {
    description = "R package janeaustenr";
    homepage = "https://cran.r-project.org/package=janeaustenr";
  };
}
