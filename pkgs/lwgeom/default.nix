{
  buildRPackage,
  fetchurl,
  Rcpp,
  sf,
  units,
}:

buildRPackage {
  pname = "lwgeom";
  version = "0.2-16";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lwgeom_0.2-16.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lwgeom/lwgeom_0.2-16.tar.gz"
    ];
    sha256 = "1rgmvrnzihb478bn1q1s9d2if3r2xal86dscz1sawckzlrl2xpns";
  };

  propagatedBuildInputs = [
    Rcpp
    sf
    units
  ];

  meta = {
    description = "R package lwgeom";
    homepage = "https://cran.r-project.org/package=lwgeom";
  };
}
