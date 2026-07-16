{
  buildRPackage,
  fetchurl,
  BiocGenerics,
  GenomeInfoDb,
  GenomicRanges,
  IRanges,
  Matrix,
  RSpectra,
  Rcpp,
  RcppRoll,
  Rsamtools,
  S4Vectors,
  SeuratObject,
  data_table,
  dplyr,
  fastmatch,
  future,
  future_apply,
  ggplot2,
  lifecycle,
  patchwork,
  pbapply,
  rlang,
  scales,
  sparseMatrixStats,
  stringi,
  tidyr,
  tidyselect,
  vctrs,
}:

buildRPackage {
  pname = "Signac";
  version = "1.17.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Signac_1.17.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Signac/Signac_1.17.1.tar.gz"
    ];
    sha256 = "04fh1f1qiz9qawgwzlng72ck051f02mgmlkqbrzi4wwppvla4rxw";
  };

  propagatedBuildInputs = [
    BiocGenerics
    GenomeInfoDb
    GenomicRanges
    IRanges
    Matrix
    RSpectra
    Rcpp
    RcppRoll
    Rsamtools
    S4Vectors
    SeuratObject
    data_table
    dplyr
    fastmatch
    future
    future_apply
    ggplot2
    lifecycle
    patchwork
    pbapply
    rlang
    scales
    sparseMatrixStats
    stringi
    tidyr
    tidyselect
    vctrs
  ];

  meta = {
    description = "R package Signac";
    homepage = "https://cran.r-project.org/package=Signac";
  };
}
