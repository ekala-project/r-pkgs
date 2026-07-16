{
  buildRPackage,
  fetchurl,
  BH,
  Matrix,
  Rcpp,
  RcppEigen,
  RcppParallel,
  StanHeaders,
  bayesplot,
  coda,
  future_apply,
  igraph,
  lavaan,
  loo,
  mnormt,
  nonnest2,
  rstan,
  rstantools,
  tmvnsim,
}:

buildRPackage {
  pname = "blavaan";
  version = "0.5-10";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/blavaan_0.5-10.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/blavaan/blavaan_0.5-10.tar.gz"
    ];
    sha256 = "1mg97jf64prwyzafmwna7lz4xzjy3i0q88xbz8vj3l2yy3w14il3";
  };

  propagatedBuildInputs = [
    BH
    Matrix
    Rcpp
    RcppEigen
    RcppParallel
    StanHeaders
    bayesplot
    coda
    future_apply
    igraph
    lavaan
    loo
    mnormt
    nonnest2
    rstan
    rstantools
    tmvnsim
  ];

  meta = {
    description = "R package blavaan";
    homepage = "https://cran.r-project.org/package=blavaan";
  };
}
