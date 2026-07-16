{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Deriv";
  version = "4.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Deriv_4.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Deriv/Deriv_4.2.0.tar.gz"
    ];
    sha256 = "0qqz588rvak0fsnbpidxdz4i0g2s7jav3s1p7nagvrhgz7kr80r1";
  };

  meta = {
    description = "R package Deriv";
    homepage = "https://cran.r-project.org/package=Deriv";
  };
}
