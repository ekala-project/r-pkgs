{
  buildRPackage,
  fetchurl,
  Rcpp,
  progress,
}:

buildRPackage {
  pname = "rncl";
  version = "0.8.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rncl_0.8.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rncl/rncl_0.8.9.tar.gz"
    ];
    sha256 = "0297042xmg3n1bdxf3pz1qpawhw1n7qmia577a74j400wv5a0r4f";
  };

  propagatedBuildInputs = [
    Rcpp
    progress
  ];

  meta = {
    description = "R package rncl";
    homepage = "https://cran.r-project.org/package=rncl";
  };
}
