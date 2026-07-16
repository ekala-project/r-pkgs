{
  buildRPackage,
  fetchurl,
  GSA,
  impute,
  matrixStats,
  openxlsx,
  shiny,
  shinyFiles,
}:

buildRPackage {
  pname = "samr";
  version = "3.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/samr_3.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/samr/samr_3.0.1.tar.gz"
    ];
    sha256 = "1qdsm9dj4vql1ah3h12zcslx09g09hr34idc4xiqcd6q7lp2c109";
  };

  propagatedBuildInputs = [
    GSA
    impute
    matrixStats
    openxlsx
    shiny
    shinyFiles
  ];

  meta = {
    description = "R package samr";
    homepage = "https://cran.r-project.org/package=samr";
  };
}
