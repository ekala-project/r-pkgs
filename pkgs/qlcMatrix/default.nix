{
  buildRPackage,
  fetchurl,
  Matrix,
  docopt,
  slam,
  sparsesvd,
}:

buildRPackage {
  pname = "qlcMatrix";
  version = "0.9.9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/qlcMatrix_0.9.9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/qlcMatrix/qlcMatrix_0.9.9.tar.gz"
    ];
    sha256 = "12ay5vxa2862ga5p5ilncjx9av8662hxfbc4j96zn31m5pjc508a";
  };

  propagatedBuildInputs = [
    Matrix
    docopt
    slam
    sparsesvd
  ];

  meta = {
    description = "R package qlcMatrix";
    homepage = "https://cran.r-project.org/package=qlcMatrix";
  };
}
