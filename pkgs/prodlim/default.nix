{
  buildRPackage,
  fetchurl,
  KernSmooth,
  Rcpp,
  data_table,
  diagram,
  ggplot2,
  lava,
  rlang,
  scales,
  survival,
}:

buildRPackage {
  pname = "prodlim";
  version = "2026.03.11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/prodlim_2026.03.11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/prodlim/prodlim_2026.03.11.tar.gz"
    ];
    sha256 = "0slirvn3fn5nqrkifw2645k4navy26kcqn41bqwj5bkwyzqacr0k";
  };

  propagatedBuildInputs = [
    KernSmooth
    Rcpp
    data_table
    diagram
    ggplot2
    lava
    rlang
    scales
    survival
  ];

  meta = {
    description = "R package prodlim";
    homepage = "https://cran.r-project.org/package=prodlim";
  };
}
