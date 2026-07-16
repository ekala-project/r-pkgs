{
  buildRPackage,
  fetchurl,
  MASS,
  ggplot2,
}:

buildRPackage {
  pname = "ggdendro";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggdendro_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggdendro/ggdendro_0.2.0.tar.gz"
    ];
    sha256 = "0sdayyzvhkbli0ha68mc0f7cgp36njv9ign37d63l21hvd6w6h0r";
  };

  propagatedBuildInputs = [
    MASS
    ggplot2
  ];

  meta = {
    description = "R package ggdendro";
    homepage = "https://cran.r-project.org/package=ggdendro";
  };
}
