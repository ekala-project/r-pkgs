{
  buildRPackage,
  fetchurl,
  estimability,
  mvtnorm,
  numDeriv,
  rlang,
}:

buildRPackage {
  pname = "emmeans";
  version = "2.0.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/emmeans_2.0.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/emmeans/emmeans_2.0.3.tar.gz"
    ];
    sha256 = "1bi92wkskddyfxzz71fx02q9p8l812raa5pqcb6y5afyxa5krbmz";
  };

  propagatedBuildInputs = [
    estimability
    mvtnorm
    numDeriv
    rlang
  ];

  meta = {
    description = "R package emmeans";
    homepage = "https://cran.r-project.org/package=emmeans";
  };
}
