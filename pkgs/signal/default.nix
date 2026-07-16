{
  buildRPackage,
  fetchurl,
  MASS,
}:

buildRPackage {
  pname = "signal";
  version = "1.8-1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/signal_1.8-1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/signal/signal_1.8-1.tar.gz"
    ];
    sha256 = "1c7fw5akdm8f44zgdafsgz2fpn6kfwifaw29yakl7zykq89vq8m3";
  };

  propagatedBuildInputs = [
    MASS
  ];

  meta = {
    description = "R package signal";
    homepage = "https://cran.r-project.org/package=signal";
  };
}
