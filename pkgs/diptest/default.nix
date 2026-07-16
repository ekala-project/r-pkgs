{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "diptest";
  version = "0.77-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/diptest_0.77-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/diptest/diptest_0.77-2.tar.gz"
    ];
    sha256 = "0gybxg9i18cki1qifmyvwx0355a9xp4ci59chwymm1p99fbgdarv";
  };

  meta = {
    description = "R package diptest";
    homepage = "https://cran.r-project.org/package=diptest";
  };
}
