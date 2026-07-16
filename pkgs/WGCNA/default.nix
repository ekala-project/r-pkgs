{
  buildRPackage,
  fetchurl,
  Hmisc,
  Rcpp,
  doParallel,
  dynamicTreeCut,
  fastcluster,
  foreach,
  impute,
  matrixStats,
  preprocessCore,
  survival,
}:

buildRPackage {
  pname = "WGCNA";
  version = "1.74";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/WGCNA_1.74.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/WGCNA/WGCNA_1.74.tar.gz"
    ];
    sha256 = "1mjmz7qpgnkd07ar02qd9ff4r0d3brf6v4xzc4dz11r2p0by2qag";
  };

  propagatedBuildInputs = [
    Hmisc
    Rcpp
    doParallel
    dynamicTreeCut
    fastcluster
    foreach
    impute
    matrixStats
    preprocessCore
    survival
  ];

  meta = {
    description = "R package WGCNA";
    homepage = "https://cran.r-project.org/package=WGCNA";
  };
}
