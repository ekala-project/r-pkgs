{
  buildRPackage,
  fetchurl,
  ggplot2,
  gstat,
  lattice,
  reshape,
  sf,
  sp,
  stars,
}:

buildRPackage {
  pname = "automap";
  version = "1.1-20";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/automap_1.1-20.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/automap/automap_1.1-20.tar.gz"
    ];
    sha256 = "1vcqdl691gr90pn4sbzniiaqarjwc3narbnbm3qrshz5awpk45wz";
  };

  propagatedBuildInputs = [
    ggplot2
    gstat
    lattice
    reshape
    sf
    sp
    stars
  ];

  meta = {
    description = "R package automap";
    homepage = "https://cran.r-project.org/package=automap";
  };
}
