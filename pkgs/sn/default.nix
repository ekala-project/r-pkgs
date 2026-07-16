{
  buildRPackage,
  fetchurl,
  mnormt,
  numDeriv,
  quantreg,
}:

buildRPackage {
  pname = "sn";
  version = "2.1.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sn_2.1.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sn/sn_2.1.3.tar.gz"
    ];
    sha256 = "0632h7p8xw5hnn0a661880qbk3b3m7pxc793y43cv2nj0fnz2k8l";
  };

  propagatedBuildInputs = [
    mnormt
    numDeriv
    quantreg
  ];

  meta = {
    description = "R package sn";
    homepage = "https://cran.r-project.org/package=sn";
  };
}
