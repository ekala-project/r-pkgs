{
  buildRPackage,
  fetchurl,
  Rcpp,
  jsonlite,
}:

buildRPackage {
  pname = "protolite";
  version = "2.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/protolite_2.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/protolite/protolite_2.4.0.tar.gz"
    ];
    sha256 = "195z9ccj2laj82ixk9h8yny5bnlr143wv1g6r6hkn85zgxmwaad6";
  };

  propagatedBuildInputs = [
    Rcpp
    jsonlite
  ];

  meta = {
    description = "R package protolite";
    homepage = "https://cran.r-project.org/package=protolite";
  };
}
