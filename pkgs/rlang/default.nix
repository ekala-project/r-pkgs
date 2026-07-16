{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rlang";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rlang_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rlang/rlang_1.2.0.tar.gz"
    ];
    sha256 = "0ms3hyiqab9m4jckxfp4pvak0kbx9bdjqjka3gc3gfn1yva8m04g";
  };

  meta = {
    description = "R package rlang";
    homepage = "https://cran.r-project.org/package=rlang";
  };
}
