{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pkgconfig";
  version = "2.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pkgconfig_2.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pkgconfig/pkgconfig_2.0.3.tar.gz"
    ];
    sha256 = "0l1qph8zyi2sic3k2qcd7vlfl7rzfh1q7z7zvjkl5f7y1x2fy3rk";
  };

  meta = {
    description = "R package pkgconfig";
    homepage = "https://cran.r-project.org/package=pkgconfig";
  };
}
