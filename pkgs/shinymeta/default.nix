{
  buildRPackage,
  fetchurl,
  callr,
  fastmap,
  fs,
  htmltools,
  rlang,
  shiny,
  sourcetools,
  styler,
}:

buildRPackage {
  pname = "shinymeta";
  version = "0.2.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinymeta_0.2.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinymeta/shinymeta_0.2.2.tar.gz"
    ];
    sha256 = "01xgif5bil822lcp5ami55bcv0dncdqk5kaqjvhgka5jlv90hznc";
  };

  propagatedBuildInputs = [
    callr
    fastmap
    fs
    htmltools
    rlang
    shiny
    sourcetools
    styler
  ];

  meta = {
    description = "R package shinymeta";
    homepage = "https://cran.r-project.org/package=shinymeta";
  };
}
