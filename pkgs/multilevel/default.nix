{
  buildRPackage,
  fetchurl,
  MASS,
  nlme,
}:

buildRPackage {
  pname = "multilevel";
  version = "2.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/multilevel_2.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/multilevel/multilevel_2.8.tar.gz"
    ];
    sha256 = "15g1qrcd4idnqz0af8n7gcakixnh2acf057if66b3x8bx58y6dzq";
  };

  propagatedBuildInputs = [
    MASS
    nlme
  ];

  meta = {
    description = "R package multilevel";
    homepage = "https://cran.r-project.org/package=multilevel";
  };
}
