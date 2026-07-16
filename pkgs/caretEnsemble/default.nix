{
  buildRPackage,
  fetchurl,
  caret,
  data_table,
  ggplot2,
  lattice,
  patchwork,
  pbapply,
  rlang,
}:

buildRPackage {
  pname = "caretEnsemble";
  version = "4.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/caretEnsemble_4.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/caretEnsemble/caretEnsemble_4.0.1.tar.gz"
    ];
    sha256 = "1iszidm3g24yi5g10wyx3vw03ka1ij4z3q4ng01v7ic863wp08gb";
  };

  propagatedBuildInputs = [
    caret
    data_table
    ggplot2
    lattice
    patchwork
    pbapply
    rlang
  ];

  meta = {
    description = "R package caretEnsemble";
    homepage = "https://cran.r-project.org/package=caretEnsemble";
  };
}
