{
  buildRPackage,
  fetchurl,
  PRROC,
  checkmate,
  mlr3misc,
}:

buildRPackage {
  pname = "mlr3measures";
  version = "1.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mlr3measures_1.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mlr3measures/mlr3measures_1.3.0.tar.gz"
    ];
    sha256 = "14kjjz9ggyhgd9y6slykid9706hbzna88c61aiz3w02iwcmsqhp1";
  };

  propagatedBuildInputs = [
    PRROC
    checkmate
    mlr3misc
  ];

  meta = {
    description = "R package mlr3measures";
    homepage = "https://cran.r-project.org/package=mlr3measures";
  };
}
