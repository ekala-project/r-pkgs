{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "png";
  version = "0.1-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/png_0.1-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/png/png_0.1-9.tar.gz"
    ];
    sha256 = "12c5jwxi872k14g9mbmn2m0xynkg878lzvjd537p6p3g7hv0518b";
  };

  meta = {
    description = "R package png";
    homepage = "https://cran.r-project.org/package=png";
  };
}
