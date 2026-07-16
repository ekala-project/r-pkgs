{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "LaplacesDemon";
  version = "16.1.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/LaplacesDemon_16.1.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/LaplacesDemon/LaplacesDemon_16.1.8.tar.gz"
    ];
    sha256 = "0527wm9frwfpvxxr9p10i4yspqq89wcdy87pkkaxqhnji5amdk34";
  };

  meta = {
    description = "R package LaplacesDemon";
    homepage = "https://cran.r-project.org/package=LaplacesDemon";
  };
}
