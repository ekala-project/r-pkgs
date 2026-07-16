{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fastICA";
  version = "1.2-7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fastICA_1.2-7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fastICA/fastICA_1.2-7.tar.gz"
    ];
    sha256 = "08cw1aszsi4i8asfrzyyz66wl70g50y1dndmf8j8kqvhw1r6kdxw";
  };

  meta = {
    description = "R package fastICA";
    homepage = "https://cran.r-project.org/package=fastICA";
  };
}
