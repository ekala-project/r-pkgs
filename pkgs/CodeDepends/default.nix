{
  buildRPackage,
  fetchurl,
  XML,
  codetools,
  graph,
}:

buildRPackage {
  pname = "CodeDepends";
  version = "0.6.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/CodeDepends_0.6.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/CodeDepends/CodeDepends_0.6.7.tar.gz"
    ];
    sha256 = "02sj40qxq5vywgqay9q9vpv3s6j3jjr46kc8q3v1yw2vbsmlvrz0";
  };

  propagatedBuildInputs = [
    XML
    codetools
    graph
  ];

  meta = {
    description = "R package CodeDepends";
    homepage = "https://cran.r-project.org/package=CodeDepends";
  };
}
