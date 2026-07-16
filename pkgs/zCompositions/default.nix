{
  buildRPackage,
  fetchurl,
  MASS,
  survival,
  truncnorm,
}:

buildRPackage {
  pname = "zCompositions";
  version = "1.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/zCompositions_1.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/zCompositions/zCompositions_1.6.1.tar.gz"
    ];
    sha256 = "12cydabin8rywnz3n9pgcglmzzi9qd49h9ydlhpp4991nxia007m";
  };

  propagatedBuildInputs = [
    MASS
    survival
    truncnorm
  ];

  meta = {
    description = "R package zCompositions";
    homepage = "https://cran.r-project.org/package=zCompositions";
  };
}
