{
  buildRPackage,
  fetchurl,
  Matrix,
  generics,
}:

buildRPackage {
  pname = "arules";
  version = "1.7.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/arules_1.7.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/arules/arules_1.7.14.tar.gz"
    ];
    sha256 = "1k875551p563l3bby7kzpkd0xjvwnviq0fj5mw93xji7f14j75ff";
  };

  propagatedBuildInputs = [
    Matrix
    generics
  ];

  meta = {
    description = "R package arules";
    homepage = "https://cran.r-project.org/package=arules";
  };
}
