{
  buildRPackage,
  fetchurl,
  KernSmooth,
  MASS,
  Matrix,
  RANN,
  RColorBrewer,
  ROCR,
  RSpectra,
  Rcpp,
  RcppAnnoy,
  RcppEigen,
  RcppHNSW,
  RcppProgress,
  Rtsne,
  SeuratObject,
  cluster,
  cowplot,
  fastDummies,
  fitdistrplus,
  future,
  future_apply,
  generics,
  ggplot2,
  ggrepel,
  ggridges,
  httr,
  ica,
  igraph,
  irlba,
  jsonlite,
  lifecycle,
  lmtest,
  matrixStats,
  miniUI,
  patchwork,
  pbapply,
  plotly,
  png,
  progressr,
  reticulate,
  rlang,
  scales,
  scattermore,
  sctransform,
  shiny,
  spatstat_explore,
  spatstat_geom,
  tibble,
  uwot,
}:

buildRPackage {
  pname = "Seurat";
  version = "5.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Seurat_5.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Seurat/Seurat_5.5.0.tar.gz"
    ];
    sha256 = "1gd6hx991hpfsa7qc5xi3f4k3jdhfif3jy22nm28ml7sz86d9k7i";
  };

  propagatedBuildInputs = [
    KernSmooth
    MASS
    Matrix
    RANN
    RColorBrewer
    ROCR
    RSpectra
    Rcpp
    RcppAnnoy
    RcppEigen
    RcppHNSW
    RcppProgress
    Rtsne
    SeuratObject
    cluster
    cowplot
    fastDummies
    fitdistrplus
    future
    future_apply
    generics
    ggplot2
    ggrepel
    ggridges
    httr
    ica
    igraph
    irlba
    jsonlite
    lifecycle
    lmtest
    matrixStats
    miniUI
    patchwork
    pbapply
    plotly
    png
    progressr
    reticulate
    rlang
    scales
    scattermore
    sctransform
    shiny
    spatstat_explore
    spatstat_geom
    tibble
    uwot
  ];

  meta = {
    description = "R package Seurat";
    homepage = "https://cran.r-project.org/package=Seurat";
  };
}
