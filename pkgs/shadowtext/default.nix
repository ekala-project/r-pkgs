{
  buildRPackage,
  fetchurl,
  S7,
  ggiraph,
  ggplot2,
  purrr,
  rlang,
  scales,
}:

buildRPackage {
  pname = "shadowtext";
  version = "0.1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shadowtext_0.1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shadowtext/shadowtext_0.1.6.tar.gz"
    ];
    sha256 = "0w6qx83pbn076yzciajvpyk8kfw02yk8yybb8xbwvxhi9qyrp6xa";
  };

  propagatedBuildInputs = [
    S7
    ggiraph
    ggplot2
    purrr
    rlang
    scales
  ];

  meta = {
    description = "R package shadowtext";
    homepage = "https://cran.r-project.org/package=shadowtext";
  };
}
