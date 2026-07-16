{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "DiceKriging";
  version = "1.6.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/DiceKriging_1.6.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/DiceKriging/DiceKriging_1.6.1.tar.gz"
    ];
    sha256 = "1lhs3ijw1jczfq7f1k2f9qpq5zvicpzg95vzw39w6vq0plmdqrac";
  };

  meta = {
    description = "R package DiceKriging";
    homepage = "https://cran.r-project.org/package=DiceKriging";
  };
}
