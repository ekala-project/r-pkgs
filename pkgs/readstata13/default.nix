{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "readstata13";
  version = "0.11.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/readstata13_0.11.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/readstata13/readstata13_0.11.0.tar.gz"
    ];
    sha256 = "089d4z27yv9sbr2xifvqjjg80mh00rs16vb75wk38pvppjzg8vcy";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package readstata13";
    homepage = "https://cran.r-project.org/package=readstata13";
  };
}
