{
  buildRPackage,
  fetchurl,
  Rcpp,
  curl,
  jpeg,
  markdown,
  png,
  rlang,
  stringr,
  xml2,
}:

buildRPackage {
  pname = "gridtext";
  version = "0.1.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gridtext_0.1.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gridtext/gridtext_0.1.6.tar.gz"
    ];
    sha256 = "1pl1xrcdi3fk83dd7sfpg9fdj2dhw2q591xnrcvjwn0r6w9hwf1b";
  };

  propagatedBuildInputs = [
    Rcpp
    curl
    jpeg
    markdown
    png
    rlang
    stringr
    xml2
  ];

  meta = {
    description = "R package gridtext";
    homepage = "https://cran.r-project.org/package=gridtext";
  };
}
