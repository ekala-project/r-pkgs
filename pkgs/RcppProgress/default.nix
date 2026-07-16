{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RcppProgress";
  version = "0.4.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RcppProgress_0.4.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RcppProgress/RcppProgress_0.4.2.tar.gz"
    ];
    sha256 = "0j2b37gwjpgmrnr00srdzm751hzlpsjb54ph63xxmcdfnwhlnqmi";
  };

  meta = {
    description = "R package RcppProgress";
    homepage = "https://cran.r-project.org/package=RcppProgress";
  };
}
