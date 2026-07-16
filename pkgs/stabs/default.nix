{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "stabs";
  version = "0.7-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/stabs_0.7-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/stabs/stabs_0.7-1.tar.gz"
    ];
    sha256 = "0sz1y14rw5g1rpqs5y094vjiaq40z0sbzv9kdv71bfjsm48bqhw2";
  };

  meta = {
    description = "R package stabs";
    homepage = "https://cran.r-project.org/package=stabs";
  };
}
