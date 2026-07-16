{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RODBC";
  version = "1.3-26.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RODBC_1.3-26.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RODBC/RODBC_1.3-26.1.tar.gz"
    ];
    sha256 = "03wkgk27l9dlvnbwmxq75p4dfqw09x5rx0r197nbb6s8c49vbf0x";
  };

  meta = {
    description = "R package RODBC";
    homepage = "https://cran.r-project.org/package=RODBC";
  };
}
