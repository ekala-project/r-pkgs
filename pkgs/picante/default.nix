{
  buildRPackage,
  fetchurl,
  ape,
  nlme,
  vegan,
}:

buildRPackage {
  pname = "picante";
  version = "1.8.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/picante_1.8.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/picante/picante_1.8.2.tar.gz"
    ];
    sha256 = "19savjzj44b7ifdxcp02ynj22z4n4ikq2aipc74ljzy3yykmqmjn";
  };

  propagatedBuildInputs = [
    ape
    nlme
    vegan
  ];

  meta = {
    description = "R package picante";
    homepage = "https://cran.r-project.org/package=picante";
  };
}
