{
  buildRPackage,
  fetchurl,
  igraph,
  network,
}:

buildRPackage {
  pname = "intergraph";
  version = "2.0-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/intergraph_2.0-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/intergraph/intergraph_2.0-4.tar.gz"
    ];
    sha256 = "1jarzhrgm5g8z2h10h8x7jk9q2al6rx5kgnwvwi2199am6gjypsq";
  };

  propagatedBuildInputs = [
    igraph
    network
  ];

  meta = {
    description = "R package intergraph";
    homepage = "https://cran.r-project.org/package=intergraph";
  };
}
