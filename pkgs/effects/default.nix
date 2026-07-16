{
  buildRPackage,
  fetchurl,
  carData,
  colorspace,
  estimability,
  insight,
  lattice,
  lme4,
  nnet,
  survey,
}:

buildRPackage {
  pname = "effects";
  version = "4.2-5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/effects_4.2-5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/effects/effects_4.2-5.tar.gz"
    ];
    sha256 = "1cgbn11kin35h87ahb0awm0dz3d3ggbkz11jhbax5rc79gs1hlq6";
  };

  propagatedBuildInputs = [
    carData
    colorspace
    estimability
    insight
    lattice
    lme4
    nnet
    survey
  ];

  meta = {
    description = "R package effects";
    homepage = "https://cran.r-project.org/package=effects";
  };
}
