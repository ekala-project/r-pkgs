{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "qrng";
  version = "0.0-11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qrng_0.0-11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qrng/qrng_0.0-11.tar.gz"
    ];
    sha256 = "1ccb1aicf1p1ygwsipxsns6f2i3553w4h1f7bn6rfg893048sbp7";
  };

  meta = {
    description = "R package qrng";
    homepage = "https://cran.r-project.org/package=qrng";
  };
}
