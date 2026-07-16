{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "corrplot";
  version = "0.95";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/corrplot_0.95.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/corrplot/corrplot_0.95.tar.gz"
    ];
    sha256 = "0xnpi4cqclsikd00mjn0qb611g1a619hfr2d3ch8kra1a1kiz8w4";
  };

  meta = {
    description = "R package corrplot";
    homepage = "https://cran.r-project.org/package=corrplot";
  };
}
