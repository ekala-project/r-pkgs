{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fmsb";
  version = "0.7.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fmsb_0.7.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fmsb/fmsb_0.7.6.tar.gz"
    ];
    sha256 = "1cnkg4njb432p05j8hdwfa2swiynwm864yixgfbyr26r8jfz4zg5";
  };

  meta = {
    description = "R package fmsb";
    homepage = "https://cran.r-project.org/package=fmsb";
  };
}
