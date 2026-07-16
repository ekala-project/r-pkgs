{
  buildRPackage,
  fetchurl,
  MASS,
  combinat,
  questionr,
}:

buildRPackage {
  pname = "klaR";
  version = "1.7-4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/klaR_1.7-4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/klaR/klaR_1.7-4.tar.gz"
    ];
    sha256 = "03kz6207hfgxhr3k4g6whv5nkxwr0nz3d2dxgnqln8v0i48v721l";
  };

  propagatedBuildInputs = [
    MASS
    combinat
    questionr
  ];

  meta = {
    description = "R package klaR";
    homepage = "https://cran.r-project.org/package=klaR";
  };
}
