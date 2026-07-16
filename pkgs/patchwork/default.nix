{
  buildRPackage,
  fetchurl,
  cli,
  farver,
  ggplot2,
  gtable,
  rlang,
}:

buildRPackage {
  pname = "patchwork";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/patchwork_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/patchwork/patchwork_1.3.2.tar.gz"
    ];
    sha256 = "1sr7zsddy4v7xlx7w16mq9lgf07hdcg8cz1ilvqs9lb9znn6ki0f";
  };

  propagatedBuildInputs = [
    cli
    farver
    ggplot2
    gtable
    rlang
  ];

  meta = {
    description = "R package patchwork";
    homepage = "https://cran.r-project.org/package=patchwork";
  };
}
