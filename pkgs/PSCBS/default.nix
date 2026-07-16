{
  buildRPackage,
  fetchurl,
  DNAcopy,
  R_cache,
  R_methodsS3,
  R_oo,
  R_utils,
  aroma_light,
  future,
  matrixStats,
}:

buildRPackage {
  pname = "PSCBS";
  version = "0.68.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/PSCBS_0.68.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/PSCBS/PSCBS_0.68.0.tar.gz"
    ];
    sha256 = "1xsy4glg60iqbkvnyfwvyyjz5hnqzci45g5w17h9dva94qb62wc7";
  };

  propagatedBuildInputs = [
    DNAcopy
    R_cache
    R_methodsS3
    R_oo
    R_utils
    aroma_light
    future
    matrixStats
  ];

  meta = {
    description = "R package PSCBS";
    homepage = "https://cran.r-project.org/package=PSCBS";
  };
}
