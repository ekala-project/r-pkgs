{
  buildRPackage,
  fetchurl,
  FNN,
  RColorBrewer,
  Rtsne,
  cpp11,
  ggplot2,
  ggrepel,
  gridExtra,
}:

buildRPackage {
  pname = "densityClust";
  version = "0.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/densityClust_0.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/densityClust/densityClust_0.3.3.tar.gz"
    ];
    sha256 = "0iiq2zal792741z1a23h7cy9jp4hsc7513dxain132526f1yrzsl";
  };

  propagatedBuildInputs = [
    FNN
    RColorBrewer
    Rtsne
    cpp11
    ggplot2
    ggrepel
    gridExtra
  ];

  meta = {
    description = "R package densityClust";
    homepage = "https://cran.r-project.org/package=densityClust";
  };
}
