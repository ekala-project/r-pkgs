{
  buildRPackage,
  fetchurl,
  Brobdingnag,
  Matrix,
  coda,
  mvtnorm,
  scales,
  stringr,
}:

buildRPackage {
  pname = "bridgesampling";
  version = "1.2-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bridgesampling_1.2-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bridgesampling/bridgesampling_1.2-1.tar.gz"
    ];
    sha256 = "167955wwif96wprmlyc321m7s3fqqs1ipdzznn2y89n2s6hlypz8";
  };

  propagatedBuildInputs = [
    Brobdingnag
    Matrix
    coda
    mvtnorm
    scales
    stringr
  ];

  meta = {
    description = "R package bridgesampling";
    homepage = "https://cran.r-project.org/package=bridgesampling";
  };
}
