{
  buildRPackage,
  fetchurl,
  R6,
  coda,
  igraph,
  numDeriv,
  pracma,
}:

buildRPackage {
  pname = "nimble";
  version = "1.4.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/nimble_1.4.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/nimble/nimble_1.4.2.tar.gz"
    ];
    sha256 = "01nmmzq54831rlpmw7a85q8ib5wffycy8xjlgldakbx2j3zg812f";
  };

  propagatedBuildInputs = [
    R6
    coda
    igraph
    numDeriv
    pracma
  ];

  meta = {
    description = "R package nimble";
    homepage = "https://cran.r-project.org/package=nimble";
  };
}
