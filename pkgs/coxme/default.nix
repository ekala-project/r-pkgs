{
  buildRPackage,
  fetchurl,
  Matrix,
  bdsmatrix,
  nlme,
  survival,
}:

buildRPackage {
  pname = "coxme";
  version = "2.2-22";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/coxme_2.2-22.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/coxme/coxme_2.2-22.tar.gz"
    ];
    sha256 = "09p179ks8f2s6qmgsvcyl2d3vwwrwwjmbv50c41kl9ymikm95d0v";
  };

  propagatedBuildInputs = [
    Matrix
    bdsmatrix
    nlme
    survival
  ];

  meta = {
    description = "R package coxme";
    homepage = "https://cran.r-project.org/package=coxme";
  };
}
