{
  buildRPackage,
  fetchurl,
  Formula,
  MASS,
  abind,
  carData,
  lme4,
  mgcv,
  nlme,
  nnet,
  pbkrtest,
  quantreg,
  scales,
}:

buildRPackage {
  pname = "car";
  version = "3.1-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/car_3.1-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/car/car_3.1-5.tar.gz"
    ];
    sha256 = "1ywrijhfzfygsmchmpldl8a88xsd7dd5nix2x3zj7hf5yz7j7ar7";
  };

  propagatedBuildInputs = [
    Formula
    MASS
    abind
    carData
    lme4
    mgcv
    nlme
    nnet
    pbkrtest
    quantreg
    scales
  ];

  meta = {
    description = "R package car";
    homepage = "https://cran.r-project.org/package=car";
  };
}
