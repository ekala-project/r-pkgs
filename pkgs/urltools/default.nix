{
  buildRPackage,
  fetchurl,
  Rcpp,
  triebeard,
}:

buildRPackage {
  pname = "urltools";
  version = "1.7.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/urltools_1.7.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/urltools/urltools_1.7.3.1.tar.gz"
    ];
    sha256 = "0wl7dikv0kwmnmcikg7y9k173fw9nlq01vscsfcfzgl5pdhvfnzq";
  };

  propagatedBuildInputs = [
    Rcpp
    triebeard
  ];

  meta = {
    description = "R package urltools";
    homepage = "https://cran.r-project.org/package=urltools";
  };
}
