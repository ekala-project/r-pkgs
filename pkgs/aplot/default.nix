{
  buildRPackage,
  fetchurl,
  ggfun,
  ggplot2,
  ggplotify,
  magrittr,
  patchwork,
  pillar,
  yulab_utils,
}:

buildRPackage {
  pname = "aplot";
  version = "0.2.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/aplot_0.2.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/aplot/aplot_0.2.9.tar.gz"
    ];
    sha256 = "0yz5yf51420haxcs1k7cr1khf10gbhb7rkdxpp4lnchrafr7h35b";
  };

  propagatedBuildInputs = [
    ggfun
    ggplot2
    ggplotify
    magrittr
    patchwork
    pillar
    yulab_utils
  ];

  meta = {
    description = "R package aplot";
    homepage = "https://cran.r-project.org/package=aplot";
  };
}
