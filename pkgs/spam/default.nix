{
  buildRPackage,
  fetchurl,
  Rcpp,
  dotCall64,
}:

buildRPackage {
  pname = "spam";
  version = "2.11-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/spam_2.11-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/spam/spam_2.11-3.tar.gz"
    ];
    sha256 = "15drn1n871acn9szfxc99rpa6nfwp0s5pq6dg0ih90bi563lz9m2";
  };

  propagatedBuildInputs = [
    Rcpp
    dotCall64
  ];

  meta = {
    description = "R package spam";
    homepage = "https://cran.r-project.org/package=spam";
  };
}
