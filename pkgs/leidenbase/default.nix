{
  buildRPackage,
  fetchurl,
  igraph,
}:

buildRPackage {
  pname = "leidenbase";
  version = "0.1.37";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/leidenbase_0.1.37.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/leidenbase/leidenbase_0.1.37.tar.gz"
    ];
    sha256 = "0qb7d46mpzsywcch5skb1gskpk3lm2a7gaffsviw8zp5ma6zjd9h";
  };

  propagatedBuildInputs = [
    igraph
  ];

  meta = {
    description = "R package leidenbase";
    homepage = "https://cran.r-project.org/package=leidenbase";
  };
}
