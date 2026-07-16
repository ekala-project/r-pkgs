{
  buildRPackage,
  fetchurl,
  MASS,
  matrixStats,
  nlme,
}:

buildRPackage {
  pname = "GLMMadaptive";
  version = "0.9-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/GLMMadaptive_0.9-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/GLMMadaptive/GLMMadaptive_0.9-7.tar.gz"
    ];
    sha256 = "0g71ysa1g4pk59v0m9s2l45f0ik5h3dc23hjv8513lcrj3jc471z";
  };

  propagatedBuildInputs = [
    MASS
    matrixStats
    nlme
  ];

  meta = {
    description = "R package GLMMadaptive";
    homepage = "https://cran.r-project.org/package=GLMMadaptive";
  };
}
