{
  buildRPackage,
  fetchurl,
  Matrix,
  formula_tools,
  mgcv,
  mice,
}:

buildRPackage {
  pname = "logistf";
  version = "1.26.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/logistf_1.26.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/logistf/logistf_1.26.1.tar.gz"
    ];
    sha256 = "14l5gvrya6pfhbbj70ibnw7v7nkhawzkm9dxkkigzh1jlby0y7im";
  };

  propagatedBuildInputs = [
    Matrix
    formula_tools
    mgcv
    mice
  ];

  meta = {
    description = "R package logistf";
    homepage = "https://cran.r-project.org/package=logistf";
  };
}
