{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ncdf4";
  version = "1.24";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ncdf4_1.24.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ncdf4/ncdf4_1.24.tar.gz"
    ];
    sha256 = "1q2rv6byprg53vmn8lzxwi1d2mwajdj3r44s4gh4igwkn03rkfkc";
  };

  meta = {
    description = "R package ncdf4";
    homepage = "https://cran.r-project.org/package=ncdf4";
  };
}
