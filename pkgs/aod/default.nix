{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "aod";
  version = "1.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/aod_1.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/aod/aod_1.3.3.tar.gz"
    ];
    sha256 = "0zh8sjzbsq3sjzayv8wa0n1vh654g47xkxklgzxcsy3xpy55w95p";
  };

  meta = {
    description = "R package aod";
    homepage = "https://cran.r-project.org/package=aod";
  };
}
