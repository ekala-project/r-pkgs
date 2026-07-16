{
  buildRPackage,
  fetchurl,
  Matrix,
  igraph,
}:

buildRPackage {
  pname = "influenceR";
  version = "0.1.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/influenceR_0.1.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/influenceR/influenceR_0.1.5.tar.gz"
    ];
    sha256 = "137m40xs9xfqcm88gi7w86b310rysf3a973wp7x3543n1y1f8r41";
  };

  propagatedBuildInputs = [
    Matrix
    igraph
  ];

  meta = {
    description = "R package influenceR";
    homepage = "https://cran.r-project.org/package=influenceR";
  };
}
