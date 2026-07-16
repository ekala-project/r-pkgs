{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "QuickJSR";
  version = "1.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/QuickJSR_1.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/QuickJSR/QuickJSR_1.10.0.tar.gz"
    ];
    sha256 = "0w9hzf2b6iv71b4xpis2fx2pzs92jj0rj4xql334j2sbamgdd1q9";
  };

  meta = {
    description = "R package QuickJSR";
    homepage = "https://cran.r-project.org/package=QuickJSR";
  };
}
