{
  buildRPackage,
  fetchurl,
  BH,
  NLP,
  Rcpp,
  slam,
  xml2,
}:

buildRPackage {
  pname = "tm";
  version = "0.7-18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tm_0.7-18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tm/tm_0.7-18.tar.gz"
    ];
    sha256 = "1ik0nslx2g5kknbyrlhfm4bygwxj4l2rpm7pp57x12ijar9075f0";
  };

  propagatedBuildInputs = [
    BH
    NLP
    Rcpp
    slam
    xml2
  ];

  meta = {
    description = "R package tm";
    homepage = "https://cran.r-project.org/package=tm";
  };
}
