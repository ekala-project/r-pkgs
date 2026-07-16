{
  buildRPackage,
  fetchurl,
  Rcpp,
  fstcore,
}:

buildRPackage {
  pname = "fst";
  version = "0.9.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fst_0.9.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fst/fst_0.9.8.tar.gz"
    ];
    sha256 = "0r96inwrr960m7wmc80603bw2vvvwab225bh9dq3lalwhy4yiis4";
  };

  propagatedBuildInputs = [
    Rcpp
    fstcore
  ];

  meta = {
    description = "R package fst";
    homepage = "https://cran.r-project.org/package=fst";
  };
}
