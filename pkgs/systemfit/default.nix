{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  car,
  lmtest,
  sandwich,
}:

buildRPackage {
  pname = "systemfit";
  version = "1.1-30";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/systemfit_1.1-30.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/systemfit/systemfit_1.1-30.tar.gz"
    ];
    sha256 = "1qhw8gda85lliqhj67zsgva4cb6wihr5hks1c9c34y0n3ywgp52r";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    car
    lmtest
    sandwich
  ];

  meta = {
    description = "R package systemfit";
    homepage = "https://cran.r-project.org/package=systemfit";
  };
}
