{
  buildRPackage,
  fetchurl,
  cli,
  ggplot2,
  gridtext,
  shades,
  stringi,
}:

buildRPackage {
  pname = "ggfittext";
  version = "0.10.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggfittext_0.10.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggfittext/ggfittext_0.10.3.tar.gz"
    ];
    sha256 = "1pym5jfrqzr75g79vg2fl7kxcwywidyn2wnnnrk673ggzajjxks5";
  };

  propagatedBuildInputs = [
    cli
    ggplot2
    gridtext
    shades
    stringi
  ];

  meta = {
    description = "R package ggfittext";
    homepage = "https://cran.r-project.org/package=ggfittext";
  };
}
