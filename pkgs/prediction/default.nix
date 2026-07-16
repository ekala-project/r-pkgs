{
  buildRPackage,
  fetchurl,
  data_table,
}:

buildRPackage {
  pname = "prediction";
  version = "0.3.18";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/prediction_0.3.18.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/prediction/prediction_0.3.18.tar.gz"
    ];
    sha256 = "194p2zbypslkd7slnvqw2z456xxwfzjxd11dirhpffjcsizkgrnh";
  };

  propagatedBuildInputs = [
    data_table
  ];

  meta = {
    description = "R package prediction";
    homepage = "https://cran.r-project.org/package=prediction";
  };
}
