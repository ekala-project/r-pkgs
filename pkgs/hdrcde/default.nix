{
  buildRPackage,
  fetchurl,
  KernSmooth,
  RColorBrewer,
  ash,
  ggplot2,
  ks,
  locfit,
}:

buildRPackage {
  pname = "hdrcde";
  version = "3.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/hdrcde_3.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/hdrcde/hdrcde_3.5.0.tar.gz"
    ];
    sha256 = "0amkqpfqqi236mric55a29jfqq6y4fj51val7fbx0zwqzv5fkzrs";
  };

  propagatedBuildInputs = [
    KernSmooth
    RColorBrewer
    ash
    ggplot2
    ks
    locfit
  ];

  meta = {
    description = "R package hdrcde";
    homepage = "https://cran.r-project.org/package=hdrcde";
  };
}
