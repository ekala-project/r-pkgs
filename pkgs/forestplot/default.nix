{
  buildRPackage,
  fetchurl,
  abind,
  checkmate,
}:

buildRPackage {
  pname = "forestplot";
  version = "3.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/forestplot_3.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/forestplot/forestplot_3.2.0.tar.gz"
    ];
    sha256 = "1rq2c4aar95w5gha5div4m2ly11j5rcnzawl2hba24blzfalfvhz";
  };

  propagatedBuildInputs = [
    abind
    checkmate
  ];

  meta = {
    description = "R package forestplot";
    homepage = "https://cran.r-project.org/package=forestplot";
  };
}
