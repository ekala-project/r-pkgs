{
  buildRPackage,
  fetchurl,
  mvtnorm,
}:

buildRPackage {
  pname = "pcaPP";
  version = "2.0-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pcaPP_2.0-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pcaPP/pcaPP_2.0-5.tar.gz"
    ];
    sha256 = "043w3g3f57j2d0irnrxm58mzzisg7xmnsl17v7wijsh1czcswkv7";
  };

  propagatedBuildInputs = [
    mvtnorm
  ];

  meta = {
    description = "R package pcaPP";
    homepage = "https://cran.r-project.org/package=pcaPP";
  };
}
