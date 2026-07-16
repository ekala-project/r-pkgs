{
  buildRPackage,
  fetchurl,
  BH,
  Rcpp,
  bigmemory_sri,
  uuid,
}:

buildRPackage {
  pname = "bigmemory";
  version = "4.6.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bigmemory_4.6.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bigmemory/bigmemory_4.6.4.tar.gz"
    ];
    sha256 = "0b80c2nsgphgr3cnvf75a0z3bzqx4q1a4dplq0h2izc71mn5fgzy";
  };

  propagatedBuildInputs = [
    BH
    Rcpp
    bigmemory_sri
    uuid
  ];

  meta = {
    description = "R package bigmemory";
    homepage = "https://cran.r-project.org/package=bigmemory";
  };
}
