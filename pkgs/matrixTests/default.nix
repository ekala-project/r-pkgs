{
  buildRPackage,
  fetchurl,
  matrixStats,
}:

buildRPackage {
  pname = "matrixTests";
  version = "0.2.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/matrixTests_0.2.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/matrixTests/matrixTests_0.2.3.1.tar.gz"
    ];
    sha256 = "0ri63i0x1l2xm8187fsj3iqprh7ic6f7q73g2pq2w6ikax2h5gyc";
  };

  propagatedBuildInputs = [
    matrixStats
  ];

  meta = {
    description = "R package matrixTests";
    homepage = "https://cran.r-project.org/package=matrixTests";
  };
}
