{
  buildRPackage,
  fetchurl,
  Rdpack,
  TFisher,
  lattice,
  mathjaxr,
  mutoss,
  qqconf,
}:

buildRPackage {
  pname = "metap";
  version = "1.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/metap_1.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/metap/metap_1.14.tar.gz"
    ];
    sha256 = "1w0jmh9l3jisa1byfbz11mxsaffmq27rsic90xjbk3fm3f8nanwn";
  };

  propagatedBuildInputs = [
    Rdpack
    TFisher
    lattice
    mathjaxr
    mutoss
    qqconf
  ];

  meta = {
    description = "R package metap";
    homepage = "https://cran.r-project.org/package=metap";
  };
}
