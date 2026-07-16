{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "SnowballC";
  version = "0.7.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/SnowballC_0.7.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/SnowballC/SnowballC_0.7.1.tar.gz"
    ];
    sha256 = "0d60h5qpk0vahcxm1y6ryqj00s4yrsdz671vq1i1cx8668zz2g3m";
  };

  meta = {
    description = "R package SnowballC";
    homepage = "https://cran.r-project.org/package=SnowballC";
  };
}
