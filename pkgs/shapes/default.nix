{
  buildRPackage,
  fetchurl,
  MASS,
  fitdistrplus,
  minpack_lm,
  rgl,
  scatterplot3d,
}:

buildRPackage {
  pname = "shapes";
  version = "1.2.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shapes_1.2.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shapes/shapes_1.2.8.tar.gz"
    ];
    sha256 = "0crk8rrdjmfdx7xwk7wvl1y3zjwapvx48f5j1gi3cj4gpsmz279b";
  };

  propagatedBuildInputs = [
    MASS
    fitdistrplus
    minpack_lm
    rgl
    scatterplot3d
  ];

  meta = {
    description = "R package shapes";
    homepage = "https://cran.r-project.org/package=shapes";
  };
}
