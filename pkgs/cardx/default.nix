{
  buildRPackage,
  fetchurl,
  cards,
  cli,
  dplyr,
  glue,
  lifecycle,
  rlang,
  tidyr,
}:

buildRPackage {
  pname = "cardx";
  version = "0.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/cardx_0.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/cardx/cardx_0.3.2.tar.gz"
    ];
    sha256 = "107hi24vzpjqcn0g5dffcmxzvmkj6yh5m5x8ik1vij6rjw33kb6b";
  };

  propagatedBuildInputs = [
    cards
    cli
    dplyr
    glue
    lifecycle
    rlang
    tidyr
  ];

  meta = {
    description = "R package cardx";
    homepage = "https://cran.r-project.org/package=cardx";
  };
}
