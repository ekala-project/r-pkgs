{
  buildRPackage,
  fetchurl,
  inline,
  leaps,
  robustbase,
  rrcov,
  survival,
}:

buildRPackage {
  pname = "BMA";
  version = "3.18.21";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/BMA_3.18.21.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/BMA/BMA_3.18.21.tar.gz"
    ];
    sha256 = "0q2fd0s5mfjx0wzm9x3d5mcsbypixxf0ypklqcf93595iw61n2ym";
  };

  propagatedBuildInputs = [
    inline
    leaps
    robustbase
    rrcov
    survival
  ];

  meta = {
    description = "R package BMA";
    homepage = "https://cran.r-project.org/package=BMA";
  };
}
