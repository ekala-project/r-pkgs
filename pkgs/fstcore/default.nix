{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "fstcore";
  version = "0.10.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fstcore_0.10.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fstcore/fstcore_0.10.0.tar.gz"
    ];
    sha256 = "1k6rm3vq26v8by1wwdrw7m0d2dlxrdjhc43x79bdmk2x55nrg7hy";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package fstcore";
    homepage = "https://cran.r-project.org/package=fstcore";
  };
}
