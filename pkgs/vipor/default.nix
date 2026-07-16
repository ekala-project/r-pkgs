{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "vipor";
  version = "0.4.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vipor_0.4.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vipor/vipor_0.4.7.tar.gz"
    ];
    sha256 = "17hb6y1i9bva0fr4k9m6wncmnzdjad1b7fhsvfhva4xavpll3bds";
  };

  meta = {
    description = "R package vipor";
    homepage = "https://cran.r-project.org/package=vipor";
  };
}
