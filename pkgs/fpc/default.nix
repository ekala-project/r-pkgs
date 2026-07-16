{
  buildRPackage,
  fetchurl,
  MASS,
  class,
  cluster,
  diptest,
  flexmix,
  kernlab,
  mclust,
  prabclus,
  robustbase,
}:

buildRPackage {
  pname = "fpc";
  version = "2.2-14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fpc_2.2-14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fpc/fpc_2.2-14.tar.gz"
    ];
    sha256 = "02ijainxq8v4k7hadva0iyf30m1aspf2b0vs8fymd3m93grqfkk5";
  };

  propagatedBuildInputs = [
    MASS
    class
    cluster
    diptest
    flexmix
    kernlab
    mclust
    prabclus
    robustbase
  ];

  meta = {
    description = "R package fpc";
    homepage = "https://cran.r-project.org/package=fpc";
  };
}
