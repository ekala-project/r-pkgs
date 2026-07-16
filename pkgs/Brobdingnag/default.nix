{
  buildRPackage,
  fetchurl,
  Matrix,
}:

buildRPackage {
  pname = "Brobdingnag";
  version = "1.2-9";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Brobdingnag_1.2-9.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Brobdingnag/Brobdingnag_1.2-9.tar.gz"
    ];
    sha256 = "07p9416rdzfyiigbglxjpbcg7pfly9nw19yn2mwg98621cjjs0gr";
  };

  propagatedBuildInputs = [
    Matrix
  ];

  meta = {
    description = "R package Brobdingnag";
    homepage = "https://cran.r-project.org/package=Brobdingnag";
  };
}
