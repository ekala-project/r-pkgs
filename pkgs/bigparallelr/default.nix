{
  buildRPackage,
  fetchurl,
  RhpcBLASctl,
  bigassertr,
  doParallel,
  flock,
  foreach,
  parallelly,
}:

buildRPackage {
  pname = "bigparallelr";
  version = "0.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/bigparallelr_0.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/bigparallelr/bigparallelr_0.3.2.tar.gz"
    ];
    sha256 = "14rkcig4j93c231sfm43331ykmvxjx2fiz5nhblj2rfzkxli4css";
  };

  propagatedBuildInputs = [
    RhpcBLASctl
    bigassertr
    doParallel
    flock
    foreach
    parallelly
  ];

  meta = {
    description = "R package bigparallelr";
    homepage = "https://cran.r-project.org/package=bigparallelr";
  };
}
