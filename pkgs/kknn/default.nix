{
  buildRPackage,
  fetchurl,
  Matrix,
  igraph,
}:

buildRPackage {
  pname = "kknn";
  version = "1.4.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kknn_1.4.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kknn/kknn_1.4.1.tar.gz"
    ];
    sha256 = "0d3gljnj904j7cd0a8pffpgdlyg0kix7dj0kns8xdyf0d31dscjj";
  };

  propagatedBuildInputs = [
    Matrix
    igraph
  ];

  meta = {
    description = "R package kknn";
    homepage = "https://cran.r-project.org/package=kknn";
  };
}
