{
  buildRPackage,
  fetchurl,
  MASS,
  boot,
}:

buildRPackage {
  pname = "laeken";
  version = "0.5.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/laeken_0.5.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/laeken/laeken_0.5.3.tar.gz"
    ];
    sha256 = "02z8jyya6xv0pyfqaalbry174fw44h13s7p1jk5b4h9a9x4myjb0";
  };

  propagatedBuildInputs = [
    MASS
    boot
  ];

  meta = {
    description = "R package laeken";
    homepage = "https://cran.r-project.org/package=laeken";
  };
}
