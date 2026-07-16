{
  buildRPackage,
  fetchurl,
  MASS,
  SparseM,
  gsl,
}:

buildRPackage {
  pname = "evmix";
  version = "2.12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/evmix_2.12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/evmix/evmix_2.12.tar.gz"
    ];
    sha256 = "02rabc9snci00s1x7h0svfr66lmw1wjcdg0149wc52mnccsdaivf";
  };

  propagatedBuildInputs = [
    MASS
    SparseM
    gsl
  ];

  meta = {
    description = "R package evmix";
    homepage = "https://cran.r-project.org/package=evmix";
  };
}
