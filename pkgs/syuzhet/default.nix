{
  buildRPackage,
  fetchurl,
  NLP,
  dplyr,
  dtt,
  rlang,
  textshape,
  tidyr,
  zoo,
}:

buildRPackage {
  pname = "syuzhet";
  version = "1.0.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/syuzhet_1.0.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/syuzhet/syuzhet_1.0.7.tar.gz"
    ];
    sha256 = "0cpjg16hwn6843jdxp4h94qjw1wwwblvjzg30w54rac08m62nkxg";
  };

  propagatedBuildInputs = [
    NLP
    dplyr
    dtt
    rlang
    textshape
    tidyr
    zoo
  ];

  meta = {
    description = "R package syuzhet";
    homepage = "https://cran.r-project.org/package=syuzhet";
  };
}
