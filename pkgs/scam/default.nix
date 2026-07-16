{
  buildRPackage,
  fetchurl,
  Matrix,
  mgcv,
}:

buildRPackage {
  pname = "scam";
  version = "1.2-22";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/scam_1.2-22.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/scam/scam_1.2-22.tar.gz"
    ];
    sha256 = "05i1arwxd4nqxa00sgj6zljizw08wgjcv5g6x0r0cwmvix3fg16p";
  };

  propagatedBuildInputs = [
    Matrix
    mgcv
  ];

  meta = {
    description = "R package scam";
    homepage = "https://cran.r-project.org/package=scam";
  };
}
