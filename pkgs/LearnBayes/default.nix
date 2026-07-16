{
  buildRPackage,
  fetchurl,
  coda,
  lattice,
  survival,
}:

buildRPackage {
  pname = "LearnBayes";
  version = "2.15.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/LearnBayes_2.15.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/LearnBayes/LearnBayes_2.15.2.tar.gz"
    ];
    sha256 = "14nic4l33cksd239xsnvrbfwrsvf3vf161mzafkvf9mlcj64bqvs";
  };

  propagatedBuildInputs = [
    coda
    lattice
    survival
  ];

  meta = {
    description = "R package LearnBayes";
    homepage = "https://cran.r-project.org/package=LearnBayes";
  };
}
