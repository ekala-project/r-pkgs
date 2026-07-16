{
  buildRPackage,
  fetchurl,
  MASS,
  lpSolve,
  quadprog,
}:

buildRPackage {
  pname = "limSolve";
  version = "2.0.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/limSolve_2.0.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/limSolve/limSolve_2.0.1.tar.gz"
    ];
    sha256 = "0f7r5bkshgwjsyiwazyqxf0bg703f6q3j80318l3964c4vw51519";
  };

  propagatedBuildInputs = [
    MASS
    lpSolve
    quadprog
  ];

  meta = {
    description = "R package limSolve";
    homepage = "https://cran.r-project.org/package=limSolve";
  };
}
