{
  buildRPackage,
  fetchurl,
  rlang,
}:

buildRPackage {
  pname = "lazyeval";
  version = "0.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/lazyeval_0.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/lazyeval/lazyeval_0.2.3.tar.gz"
    ];
    sha256 = "1jxdhsg64hj2xpnnwwxj52s7g8jy6hsbiyrsmfq7nnhrgfcv2pf6";
  };

  propagatedBuildInputs = [
    rlang
  ];

  meta = {
    description = "R package lazyeval";
    homepage = "https://cran.r-project.org/package=lazyeval";
  };
}
