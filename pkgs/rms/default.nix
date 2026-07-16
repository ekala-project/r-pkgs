{
  buildRPackage,
  fetchurl,
  Hmisc,
  MASS,
  Matrix,
  SparseM,
  cluster,
  colorspace,
  digest,
  ggplot2,
  htmlTable,
  htmltools,
  knitr,
  multcomp,
  nlme,
  polspline,
  quantreg,
  rpart,
  scales,
  survival,
}:

buildRPackage {
  pname = "rms";
  version = "8.1-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rms_8.1-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rms/rms_8.1-1.tar.gz"
    ];
    sha256 = "1c2kxx1zsg84vqf74cbpyzw5gwdv0a8v0fz7k1n4v60g3hfykzqw";
  };

  propagatedBuildInputs = [
    Hmisc
    MASS
    Matrix
    SparseM
    cluster
    colorspace
    digest
    ggplot2
    htmlTable
    htmltools
    knitr
    multcomp
    nlme
    polspline
    quantreg
    rpart
    scales
    survival
  ];

  meta = {
    description = "R package rms";
    homepage = "https://cran.r-project.org/package=rms";
  };
}
