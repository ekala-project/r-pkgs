{
  buildRPackage,
  fetchurl,
  cli,
  rlang,
}:

buildRPackage {
  pname = "xml2";
  version = "1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/xml2_1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/xml2/xml2_1.5.2.tar.gz"
    ];
    sha256 = "1ash9ya3av2a38k9p42dyl4blrhs1rxwyqw952cc7r7rg2jcz1zd";
  };

  propagatedBuildInputs = [
    cli
    rlang
  ];

  meta = {
    description = "R package xml2";
    homepage = "https://cran.r-project.org/package=xml2";
  };
}
