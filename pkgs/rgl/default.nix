{
  buildRPackage,
  fetchurl,
  R6,
  base64enc,
  htmltools,
  htmlwidgets,
  jsonlite,
  knitr,
  magrittr,
  mime,
}:

buildRPackage {
  pname = "rgl";
  version = "1.3.36";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rgl_1.3.36.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rgl/rgl_1.3.36.tar.gz"
    ];
    sha256 = "0iqm97bwd5xs9sp50x6rvriw7dynwzccwpfhcv664g2cdgr0lmqm";
  };

  propagatedBuildInputs = [
    R6
    base64enc
    htmltools
    htmlwidgets
    jsonlite
    knitr
    magrittr
    mime
  ];

  meta = {
    description = "R package rgl";
    homepage = "https://cran.r-project.org/package=rgl";
  };
}
