{
  buildRPackage,
  fetchurl,
  Rcpp,
  assertthat,
  data_table,
  ggplot2,
  gridExtra,
  rlang,
  withr,
}:

buildRPackage {
  pname = "precrec";
  version = "0.14.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/precrec_0.14.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/precrec/precrec_0.14.5.tar.gz"
    ];
    sha256 = "1n13zfmbbw7y73j09wkdpzyh5z6vkczljv5pr75lphcawshdyfa1";
  };

  propagatedBuildInputs = [
    Rcpp
    assertthat
    data_table
    ggplot2
    gridExtra
    rlang
    withr
  ];

  meta = {
    description = "R package precrec";
    homepage = "https://cran.r-project.org/package=precrec";
  };
}
