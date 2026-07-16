{
  buildRPackage,
  fetchurl,
  BBmisc,
  checkmate,
}:

buildRPackage {
  pname = "parallelMap";
  version = "1.5.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/parallelMap_1.5.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/parallelMap/parallelMap_1.5.1.tar.gz"
    ];
    sha256 = "1qg7zpz5sd9jp8wzjqahkhipwj1jn192llwg06q4gv9mlcsac261";
  };

  propagatedBuildInputs = [
    BBmisc
    checkmate
  ];

  meta = {
    description = "R package parallelMap";
    homepage = "https://cran.r-project.org/package=parallelMap";
  };
}
