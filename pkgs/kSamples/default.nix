{
  buildRPackage,
  fetchurl,
  SuppDists,
}:

buildRPackage {
  pname = "kSamples";
  version = "1.2-12";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/kSamples_1.2-12.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/kSamples/kSamples_1.2-12.tar.gz"
    ];
    sha256 = "1dwy838958vrn5mw1fyqpi8g014yz29igkcz9smvdpjb7p52v7b2";
  };

  propagatedBuildInputs = [
    SuppDists
  ];

  meta = {
    description = "R package kSamples";
    homepage = "https://cran.r-project.org/package=kSamples";
  };
}
