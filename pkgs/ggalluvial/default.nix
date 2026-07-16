{
  buildRPackage,
  fetchurl,
  dplyr,
  ggplot2,
  lazyeval,
  rlang,
  tidyr,
  tidyselect,
}:

buildRPackage {
  pname = "ggalluvial";
  version = "0.12.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggalluvial_0.12.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggalluvial/ggalluvial_0.12.6.tar.gz"
    ];
    sha256 = "0lcxjj1r0wh3x4ssc87lydgh0ihvp2rvl6xwqy2y1l9yqhc7nfgh";
  };

  propagatedBuildInputs = [
    dplyr
    ggplot2
    lazyeval
    rlang
    tidyr
    tidyselect
  ];

  meta = {
    description = "R package ggalluvial";
    homepage = "https://cran.r-project.org/package=ggalluvial";
  };
}
