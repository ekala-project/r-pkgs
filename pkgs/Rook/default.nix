{
  buildRPackage,
  fetchurl,
  brew,
}:

buildRPackage {
  pname = "Rook";
  version = "1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rook_1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rook/Rook_1.2.tar.gz"
    ];
    sha256 = "0qjziszrrwsp1mbykps3yf5r98q83cyd4jzpgi7gvbsd2ssy96n7";
  };

  propagatedBuildInputs = [
    brew
  ];

  meta = {
    description = "R package Rook";
    homepage = "https://cran.r-project.org/package=Rook";
  };
}
