{
  buildRPackage,
  fetchurl,
  Matrix,
  lme4,
  mgcv,
}:

buildRPackage {
  pname = "gamm4";
  version = "0.2-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gamm4_0.2-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gamm4/gamm4_0.2-7.tar.gz"
    ];
    sha256 = "1pxfmkja2vpzbqmsybh2rvldilidxsi48lrabzj58prr34y39k5s";
  };

  propagatedBuildInputs = [
    Matrix
    lme4
    mgcv
  ];

  meta = {
    description = "R package gamm4";
    homepage = "https://cran.r-project.org/package=gamm4";
  };
}
