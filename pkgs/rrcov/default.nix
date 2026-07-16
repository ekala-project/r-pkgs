{
  buildRPackage,
  fetchurl,
  lattice,
  mvtnorm,
  pcaPP,
  robustbase,
}:

buildRPackage {
  pname = "rrcov";
  version = "1.7-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rrcov_1.7-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rrcov/rrcov_1.7-7.tar.gz"
    ];
    sha256 = "1xbhrpmb3bn4h83kr214jmhr0rx5mgjrf396iz70mnq3g425lbqb";
  };

  propagatedBuildInputs = [
    lattice
    mvtnorm
    pcaPP
    robustbase
  ];

  meta = {
    description = "R package rrcov";
    homepage = "https://cran.r-project.org/package=rrcov";
  };
}
