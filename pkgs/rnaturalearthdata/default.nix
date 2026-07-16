{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rnaturalearthdata";
  version = "1.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rnaturalearthdata_1.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rnaturalearthdata/rnaturalearthdata_1.0.0.tar.gz"
    ];
    sha256 = "0k8yzgpbf8d2jxxy9vzqfa3z3w4h3i9kp4rc811f4pspxbqzmzp1";
  };

  meta = {
    description = "R package rnaturalearthdata";
    homepage = "https://cran.r-project.org/package=rnaturalearthdata";
  };
}
