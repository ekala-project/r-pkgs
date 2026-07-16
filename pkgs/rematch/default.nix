{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rematch";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rematch_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rematch/rematch_2.0.0.tar.gz"
    ];
    sha256 = "09jwg3glp32q4ml4khhzi8j7bzg9zhqqdg1m6r8gibh756zzgnhm";
  };

  meta = {
    description = "R package rematch";
    homepage = "https://cran.r-project.org/package=rematch";
  };
}
