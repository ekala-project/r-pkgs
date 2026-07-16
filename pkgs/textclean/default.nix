{
  buildRPackage,
  fetchurl,
  data_table,
  english,
  glue,
  lexicon,
  mgsub,
  qdapRegex,
  stringi,
  textshape,
}:

buildRPackage {
  pname = "textclean";
  version = "0.9.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/textclean_0.9.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/textclean/textclean_0.9.7.tar.gz"
    ];
    sha256 = "0cmp4rdq4f3s4ffwqi9cdd9r7vqb97hy3dswwyz0gn4a94q854j8";
  };

  propagatedBuildInputs = [
    data_table
    english
    glue
    lexicon
    mgsub
    qdapRegex
    stringi
    textshape
  ];

  meta = {
    description = "R package textclean";
    homepage = "https://cran.r-project.org/package=textclean";
  };
}
