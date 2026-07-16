{
  buildRPackage,
  fetchurl,
  Biostrings,
  GenomicAlignments,
  IRanges,
  Matrix,
  Rcpp,
  airr,
  ape,
  dplyr,
  ggplot2,
  igraph,
  progress,
  readr,
  rlang,
  scales,
  seqinr,
  stringi,
  tibble,
  tidyr,
}:

buildRPackage {
  pname = "alakazam";
  version = "1.4.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/alakazam_1.4.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/alakazam/alakazam_1.4.3.tar.gz"
    ];
    sha256 = "116b2pqkl1142mcf2yk6v71zc9nqqyl9fq7sw7cvjm6fpx6f8inz";
  };

  propagatedBuildInputs = [
    Biostrings
    GenomicAlignments
    IRanges
    Matrix
    Rcpp
    airr
    ape
    dplyr
    ggplot2
    igraph
    progress
    readr
    rlang
    scales
    seqinr
    stringi
    tibble
    tidyr
  ];

  meta = {
    description = "R package alakazam";
    homepage = "https://cran.r-project.org/package=alakazam";
  };
}
