{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RMTstat";
  version = "0.3.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RMTstat_0.3.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RMTstat/RMTstat_0.3.1.tar.gz"
    ];
    sha256 = "1r1a2sdqv64m9cpm2pz6r8abf7l810126ayd8iq3gx86c7bjfj5v";
  };

  meta = {
    description = "R package RMTstat";
    homepage = "https://cran.r-project.org/package=RMTstat";
  };
}
