{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "fastGHQuad";
  version = "1.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fastGHQuad_1.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fastGHQuad/fastGHQuad_1.0.1.tar.gz"
    ];
    sha256 = "1zj7nsbnx4g253m3dpz9vi3zk3jxwrixwjw1ks6n4shpb4dlkp2w";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package fastGHQuad";
    homepage = "https://cran.r-project.org/package=fastGHQuad";
  };
}
