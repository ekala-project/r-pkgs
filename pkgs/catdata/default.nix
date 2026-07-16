{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "catdata";
  version = "1.2.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/catdata_1.2.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/catdata/catdata_1.2.5.tar.gz"
    ];
    sha256 = "1fs7pm01lpzlml54whqskppfrfdgsxn1vk5z5rl0yydf0azbygq3";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package catdata";
    homepage = "https://cran.r-project.org/package=catdata";
  };
}
