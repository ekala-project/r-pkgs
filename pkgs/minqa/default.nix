{
  buildRPackage,
  fetchurl,
  Rcpp,
}:

buildRPackage {
  pname = "minqa";
  version = "1.2.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/minqa_1.2.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/minqa/minqa_1.2.8.tar.gz"
    ];
    sha256 = "0rslvg4imaijzb5z6vzsx4zqhrna1jk6qkp2kxnzqy0rn2wy8har";
  };

  propagatedBuildInputs = [
    Rcpp
  ];

  meta = {
    description = "R package minqa";
    homepage = "https://cran.r-project.org/package=minqa";
  };
}
