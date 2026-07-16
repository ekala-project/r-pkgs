{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "triebeard";
  version = "0.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/triebeard_0.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/triebeard/triebeard_0.4.1.tar.gz"
    ];
    sha256 = "1xz0xwq9c986as6g7z2g1ycvw1ryh4g89ygldvakpr21cgpjybqr";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package triebeard";
    homepage = "https://cran.r-project.org/package=triebeard";
  };
}
