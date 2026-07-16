{
  buildRPackage,
  fetchurl,
  classInt,
  highr,
  htmltools,
  labelled,
  miniUI,
  rlang,
  rstudioapi,
  shiny,
  styler,
}:

buildRPackage {
  pname = "questionr";
  version = "0.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/questionr_0.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/questionr/questionr_0.8.2.tar.gz"
    ];
    sha256 = "06mfxd0k2k2z9n1zasib27vi6ccxlfqs3hwzlwfbpa5s6m33dmip";
  };

  propagatedBuildInputs = [
    classInt
    highr
    htmltools
    labelled
    miniUI
    rlang
    rstudioapi
    shiny
    styler
  ];

  meta = {
    description = "R package questionr";
    homepage = "https://cran.r-project.org/package=questionr";
  };
}
