{
  buildRPackage,
  fetchurl,
  Matrix,
  RSpectra,
  Rcpp,
  openssl,
  reticulate,
}:

buildRPackage {
  pname = "umap";
  version = "0.2.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/umap_0.2.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/umap/umap_0.2.10.0.tar.gz"
    ];
    sha256 = "1abfddi0rq75b7nlx6550fx9nrqa62vb92xyp05ris25jf98ciwd";
  };

  propagatedBuildInputs = [
    Matrix
    RSpectra
    Rcpp
    openssl
    reticulate
  ];

  meta = {
    description = "R package umap";
    homepage = "https://cran.r-project.org/package=umap";
  };
}
