{
  buildRPackage,
  fetchurl,
  Matrix,
  igraph,
  reticulate,
}:

buildRPackage {
  pname = "leiden";
  version = "0.4.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/leiden_0.4.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/leiden/leiden_0.4.3.1.tar.gz"
    ];
    sha256 = "1qihzjrwcb09aga27frcdrdv4dp0g295dbrk07fqykbjlb7vpv59";
  };

  propagatedBuildInputs = [
    Matrix
    igraph
    reticulate
  ];

  meta = {
    description = "R package leiden";
    homepage = "https://cran.r-project.org/package=leiden";
  };
}
