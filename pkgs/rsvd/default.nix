{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "rsvd";
  version = "1.0.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rsvd_1.0.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rsvd/rsvd_1.0.5.tar.gz"
    ];
    sha256 = "07p2hjmpcwcsang8z9sjkpy94rydcin7m3hyvcgzgm5cd6w8c1p4";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package rsvd";
    homepage = "https://cran.r-project.org/package=rsvd";
  };
}
