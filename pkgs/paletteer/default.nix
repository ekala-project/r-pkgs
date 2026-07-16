{
  buildRPackage,
  fetchurl,
  cli,
  prismatic,
  rematch2,
  rlang,
  rstudioapi,
}:

buildRPackage {
  pname = "paletteer";
  version = "1.7.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/paletteer_1.7.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/paletteer/paletteer_1.7.0.tar.gz"
    ];
    sha256 = "12rvwki5wnraibc54hh80ym9q7r7s1njhi086k8h4vhffnq7yiib";
  };

  propagatedBuildInputs = [
    cli
    prismatic
    rematch2
    rlang
    rstudioapi
  ];

  meta = {
    description = "R package paletteer";
    homepage = "https://cran.r-project.org/package=paletteer";
  };
}
