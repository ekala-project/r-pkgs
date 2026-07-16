{
  buildRPackage,
  fetchurl,
  car,
  lme4,
  lmerTest,
  pbkrtest,
  reformulas,
  reshape2,
  rlang,
}:

buildRPackage {
  pname = "afex";
  version = "1.5-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/afex_1.5-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/afex/afex_1.5-1.tar.gz"
    ];
    sha256 = "1frxq23bsbmlqbmi1vpsjm4w9liplr5ah0qnw728iqkr0lvvpib8";
  };

  propagatedBuildInputs = [
    car
    lme4
    lmerTest
    pbkrtest
    reformulas
    reshape2
    rlang
  ];

  meta = {
    description = "R package afex";
    homepage = "https://cran.r-project.org/package=afex";
  };
}
