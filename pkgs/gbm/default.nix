{
  buildRPackage,
  fetchurl,
  lattice,
  survival,
}:

buildRPackage {
  pname = "gbm";
  version = "2.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gbm_2.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gbm/gbm_2.2.3.tar.gz"
    ];
    sha256 = "048bcr1lg59348iq7v005q6bwp36ah0zhsr5j5slqwy8qjscjkrs";
  };

  propagatedBuildInputs = [
    lattice
    survival
  ];

  meta = {
    description = "R package gbm";
    homepage = "https://cran.r-project.org/package=gbm";
  };
}
