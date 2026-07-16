{
  buildRPackage,
  fetchurl,
  Matrix,
  data_table,
  jsonlite,
}:

buildRPackage {
  pname = "xgboost";
  version = "3.2.1.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/xgboost_3.2.1.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/xgboost/xgboost_3.2.1.1.tar.gz"
    ];
    sha256 = "19g2rq5v277qi4idkdmiykzp3nw8v9mmnwmbgabig4b8lndgbwsl";
  };

  propagatedBuildInputs = [
    Matrix
    data_table
    jsonlite
  ];

  meta = {
    description = "R package xgboost";
    homepage = "https://cran.r-project.org/package=xgboost";
  };
}
