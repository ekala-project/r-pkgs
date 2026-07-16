{
  buildRPackage,
  fetchurl,
  MASS,
  Matrix,
  enrichwith,
  nleqslv,
  nnet,
  numDeriv,
  statmod,
}:

buildRPackage {
  pname = "brglm2";
  version = "1.1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/brglm2_1.1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/brglm2/brglm2_1.1.0.tar.gz"
    ];
    sha256 = "02lfxlz7hwwj1rfjsbnj3gd5px63xr2zx4rki7725qpr3v9pjxb8";
  };

  propagatedBuildInputs = [
    MASS
    Matrix
    enrichwith
    nleqslv
    nnet
    numDeriv
    statmod
  ];

  meta = {
    description = "R package brglm2";
    homepage = "https://cran.r-project.org/package=brglm2";
  };
}
