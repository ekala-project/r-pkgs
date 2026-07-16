{
  buildRPackage,
  fetchurl,
  MASS,
  data_table,
  jsonlite,
  lattice,
  yaml,
}:

buildRPackage {
  pname = "memisc";
  version = "0.99.31.8.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/memisc_0.99.31.8.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/memisc/memisc_0.99.31.8.3.tar.gz"
    ];
    sha256 = "14mf01abhww2d2z1xyfz96cy0hai374dlzc5vnb9s7n4gpgigm8d";
  };

  propagatedBuildInputs = [
    MASS
    data_table
    jsonlite
    lattice
    yaml
  ];

  meta = {
    description = "R package memisc";
    homepage = "https://cran.r-project.org/package=memisc";
  };
}
