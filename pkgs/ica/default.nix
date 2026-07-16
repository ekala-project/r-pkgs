{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "ica";
  version = "1.0-3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ica_1.0-3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ica/ica_1.0-3.tar.gz"
    ];
    sha256 = "0rdqd3kz2cv3xvf6yz55bwhsg3k7j90d450i3azs2xkbn4q3aka7";
  };

  meta = {
    description = "R package ica";
    homepage = "https://cran.r-project.org/package=ica";
  };
}
