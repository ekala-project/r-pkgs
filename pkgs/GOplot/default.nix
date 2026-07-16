{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  ggdendro,
  ggplot2,
  gridExtra,
}:

buildRPackage {
  pname = "GOplot";
  version = "1.0.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GOplot_1.0.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GOplot/GOplot_1.0.2.tar.gz"
    ];
    sha256 = "1y8dv0kbzpr9za91njw0x233vx5d13vqml9hmpddcyi9s6va5nix";
  };

  propagatedBuildInputs = [
    RColorBrewer
    ggdendro
    ggplot2
    gridExtra
  ];

  meta = {
    description = "R package GOplot";
    homepage = "https://cran.r-project.org/package=GOplot";
  };
}
