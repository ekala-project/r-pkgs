{
  buildRPackage,
  fetchurl,
  MASS,
  e1071,
  gmodels,
  labelled,
  nlme,
  survey,
  zoo,
}:

buildRPackage {
  pname = "tableone";
  version = "0.13.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tableone_0.13.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tableone/tableone_0.13.2.tar.gz"
    ];
    sha256 = "1br78y68037g5v5jhgi9l393kj2msamdklim8ki40hmxk9bibkxi";
  };

  propagatedBuildInputs = [
    MASS
    e1071
    gmodels
    labelled
    nlme
    survey
    zoo
  ];

  meta = {
    description = "R package tableone";
    homepage = "https://cran.r-project.org/package=tableone";
  };
}
