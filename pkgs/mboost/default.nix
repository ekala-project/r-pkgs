{
  buildRPackage,
  fetchurl,
  Matrix,
  lattice,
  nnls,
  partykit,
  quadprog,
  stabs,
  survival,
}:

buildRPackage {
  pname = "mboost";
  version = "2.9-11";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mboost_2.9-11.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mboost/mboost_2.9-11.tar.gz"
    ];
    sha256 = "0n5wpyayhdyd46vl87c9r70m13y48khmlwii58rvi57mgw6aadwz";
  };

  propagatedBuildInputs = [
    Matrix
    lattice
    nnls
    partykit
    quadprog
    stabs
    survival
  ];

  meta = {
    description = "R package mboost";
    homepage = "https://cran.r-project.org/package=mboost";
  };
}
