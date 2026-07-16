{
  buildRPackage,
  fetchurl,
  abind,
  checkmate,
  distributional,
  matrixStats,
  pillar,
  rlang,
  tensorA,
  tibble,
  vctrs,
}:

buildRPackage {
  pname = "posterior";
  version = "1.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/posterior_1.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/posterior/posterior_1.7.0.tar.gz"
    ];
    sha256 = "1p40awi0vp26524fvbcwx24fs3siq65b9s9m97h0jk7arsy0a0s3";
  };

  propagatedBuildInputs = [
    abind
    checkmate
    distributional
    matrixStats
    pillar
    rlang
    tensorA
    tibble
    vctrs
  ];

  meta = {
    description = "R package posterior";
    homepage = "https://cran.r-project.org/package=posterior";
  };
}
