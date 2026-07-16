{
  buildRPackage,
  fetchurl,
  FactoMineR,
  cluster,
  dendextend,
  ggplot2,
  ggpubr,
  ggrepel,
  rlang,
}:

buildRPackage {
  pname = "factoextra";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/factoextra_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/factoextra/factoextra_2.0.0.tar.gz"
    ];
    sha256 = "0229j9mana85c3yn3dsxpncr25wyn3nvsavb5dy1c33wyparr8lv";
  };

  propagatedBuildInputs = [
    FactoMineR
    cluster
    dendextend
    ggplot2
    ggpubr
    ggrepel
    rlang
  ];

  meta = {
    description = "R package factoextra";
    homepage = "https://cran.r-project.org/package=factoextra";
  };
}
