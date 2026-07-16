{
  buildRPackage,
  fetchurl,
  cvAUC,
  gam,
  nnls,
}:

buildRPackage {
  pname = "SuperLearner";
  version = "2.0-40";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/SuperLearner_2.0-40.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/SuperLearner/SuperLearner_2.0-40.tar.gz"
    ];
    sha256 = "14hzk3636nx6dkbry1dxhi4ndp7jwyn7y5aa5jm6jwq75nyzayiz";
  };

  propagatedBuildInputs = [
    cvAUC
    gam
    nnls
  ];

  meta = {
    description = "R package SuperLearner";
    homepage = "https://cran.r-project.org/package=SuperLearner";
  };
}
