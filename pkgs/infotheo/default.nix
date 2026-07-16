{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "infotheo";
  version = "1.2.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/infotheo_1.2.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/infotheo/infotheo_1.2.0.1.tar.gz"
    ];
    sha256 = "1m1979vf8rvq3534mp1hihfadikhxrg3p6ac3hirz96kgb4qxyy0";
  };

  meta = {
    description = "R package infotheo";
    homepage = "https://cran.r-project.org/package=infotheo";
  };
}
