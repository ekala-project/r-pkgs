{
  buildRPackage,
  fetchurl,
  CVST,
  Matrix,
  kernlab,
}:

buildRPackage {
  pname = "DRR";
  version = "0.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DRR_0.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DRR/DRR_0.0.5.tar.gz"
    ];
    sha256 = "15kz65c5j05f0fq7pr1d1s9rzazyw47nl5hvql9fvhzpvf07jhpl";
  };

  propagatedBuildInputs = [
    CVST
    Matrix
    kernlab
  ];

  meta = {
    description = "R package DRR";
    homepage = "https://cran.r-project.org/package=DRR";
  };
}
