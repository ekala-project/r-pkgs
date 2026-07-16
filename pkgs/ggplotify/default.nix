{
  buildRPackage,
  fetchurl,
  ggplot2,
  gridGraphics,
  rlang,
  yulab_utils,
}:

buildRPackage {
  pname = "ggplotify";
  version = "0.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggplotify_0.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggplotify/ggplotify_0.1.3.tar.gz"
    ];
    sha256 = "0zqbq5sf8qa10zz95zg2i7jp1wz0wq2rspgp9p71njy3ziniq4c7";
  };

  propagatedBuildInputs = [
    ggplot2
    gridGraphics
    rlang
    yulab_utils
  ];

  meta = {
    description = "R package ggplotify";
    homepage = "https://cran.r-project.org/package=ggplotify";
  };
}
