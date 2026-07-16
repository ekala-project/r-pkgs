{
  buildRPackage,
  fetchurl,
  MASS,
  cluster,
  lattice,
  mgcv,
  permute,
}:

buildRPackage {
  pname = "vegan";
  version = "2.7-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/vegan_2.7-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/vegan/vegan_2.7-3.tar.gz"
    ];
    sha256 = "0wh72b8sa1x94b6m4kwd78274y0laf4ccfhsw4jzp2zkx1s1zk0z";
  };

  propagatedBuildInputs = [
    MASS
    cluster
    lattice
    mgcv
    permute
  ];

  meta = {
    description = "R package vegan";
    homepage = "https://cran.r-project.org/package=vegan";
  };
}
