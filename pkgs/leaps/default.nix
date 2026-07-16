{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "leaps";
  version = "3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/leaps_3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/leaps/leaps_3.2.tar.gz"
    ];
    sha256 = "1bbgm6l12gj1y28ks21awxphpmp07hb0ffiyrw7dqp3fcyxvxmm0";
  };

  meta = {
    description = "R package leaps";
    homepage = "https://cran.r-project.org/package=leaps";
  };
}
