{
  buildRPackage,
  fetchurl,
  clue,
  rpart,
}:

buildRPackage {
  pname = "statip";
  version = "0.2.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/statip_0.2.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/statip/statip_0.2.3.tar.gz"
    ];
    sha256 = "0kymc3ds1nx0h11ffmm3vmqr1w34gd0k788vf72x2v45h8c1ma2n";
  };

  propagatedBuildInputs = [
    clue
    rpart
  ];

  meta = {
    description = "R package statip";
    homepage = "https://cran.r-project.org/package=statip";
  };
}
