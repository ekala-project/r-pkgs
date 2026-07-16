{
  buildRPackage,
  fetchurl,
  sf,
}:

buildRPackage {
  pname = "sftime";
  version = "0.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sftime_0.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sftime/sftime_0.3.2.tar.gz"
    ];
    sha256 = "0kczplfhsd8yz652als1lz6xbddkl22ckingw1jzfkp5sh7x0f2n";
  };

  propagatedBuildInputs = [
    sf
  ];

  meta = {
    description = "R package sftime";
    homepage = "https://cran.r-project.org/package=sftime";
  };
}
