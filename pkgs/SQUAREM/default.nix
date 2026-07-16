{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "SQUAREM";
  version = "2026.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/SQUAREM_2026.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/SQUAREM/SQUAREM_2026.1.tar.gz"
    ];
    sha256 = "1bgwdkshcml5i6ib4lhqrlh24a9qsznjl9m4drjadcvn90w2mcz9";
  };

  meta = {
    description = "R package SQUAREM";
    homepage = "https://cran.r-project.org/package=SQUAREM";
  };
}
