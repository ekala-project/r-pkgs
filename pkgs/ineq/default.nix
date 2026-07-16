{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ineq";
  version = "0.2-13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ineq_0.2-13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ineq/ineq_0.2-13.tar.gz"
    ];
    sha256 = "09fsxyrh0j7mwmb5hkhmrzgcy7kf85jxkh7zlwpgqgcsyl1n91z0";
  };

  meta = {
    description = "R package ineq";
    homepage = "https://cran.r-project.org/package=ineq";
  };
}
