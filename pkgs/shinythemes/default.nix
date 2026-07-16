{
  buildRPackage,
  fetchurl,
  shiny,
}:

buildRPackage {
  pname = "shinythemes";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/shinythemes_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/shinythemes/shinythemes_1.2.0.tar.gz"
    ];
    sha256 = "0qr9bfxw8afxns44i2j4msignf6g5qb2nzpay2lpv343rrlqbmip";
  };

  propagatedBuildInputs = [
    shiny
  ];

  meta = {
    description = "R package shinythemes";
    homepage = "https://cran.r-project.org/package=shinythemes";
  };
}
