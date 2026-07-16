{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tsne";
  version = "0.2-0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tsne_0.2-0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tsne/tsne_0.2-0.tar.gz"
    ];
    sha256 = "1wn5d3a6aw1av18d6lx9l7bpzf1vj58w81gg9vclrc7vccfaqk5x";
  };

  meta = {
    description = "R package tsne";
    homepage = "https://cran.r-project.org/package=tsne";
  };
}
