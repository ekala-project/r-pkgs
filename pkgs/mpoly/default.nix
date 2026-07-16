{
  buildRPackage,
  fetchurl,
  ggplot2,
  orthopolynom,
  partitions,
  plyr,
  polynom,
  stringi,
  stringr,
  tidyr,
}:

buildRPackage {
  pname = "mpoly";
  version = "1.1.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mpoly_1.1.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mpoly/mpoly_1.1.2.tar.gz"
    ];
    sha256 = "1jhcnnb7g0mgkivn94y7mq0jb0qny5qgnzb9grd7qmlxhgzmmvyv";
  };

  propagatedBuildInputs = [
    ggplot2
    orthopolynom
    partitions
    plyr
    polynom
    stringi
    stringr
    tidyr
  ];

  meta = {
    description = "R package mpoly";
    homepage = "https://cran.r-project.org/package=mpoly";
  };
}
