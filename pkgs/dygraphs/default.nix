{
  buildRPackage,
  fetchurl,
  htmltools,
  htmlwidgets,
  magrittr,
  xts,
  zoo,
}:

buildRPackage {
  pname = "dygraphs";
  version = "1.1.1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/dygraphs_1.1.1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/dygraphs/dygraphs_1.1.1.6.tar.gz"
    ];
    sha256 = "022j007mzfa9k2n31yg4aizcsf571vv3jip092h23rqj03rk3ly3";
  };

  propagatedBuildInputs = [
    htmltools
    htmlwidgets
    magrittr
    xts
    zoo
  ];

  meta = {
    description = "R package dygraphs";
    homepage = "https://cran.r-project.org/package=dygraphs";
  };
}
