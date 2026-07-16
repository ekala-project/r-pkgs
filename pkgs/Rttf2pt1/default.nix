{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "Rttf2pt1";
  version = "1.3.14";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/Rttf2pt1_1.3.14.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/Rttf2pt1/Rttf2pt1_1.3.14.tar.gz"
    ];
    sha256 = "1mqa1y33vi003sm8f9jf9kw99dh063n3a9wv8phhjsippsikazdb";
  };

  meta = {
    description = "R package Rttf2pt1";
    homepage = "https://cran.r-project.org/package=Rttf2pt1";
  };
}
