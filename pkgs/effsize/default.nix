{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "effsize";
  version = "0.8.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/effsize_0.8.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/effsize/effsize_0.8.1.tar.gz"
    ];
    sha256 = "1m5ch2g77f4ldbxhzp2ls1pga8hq7ggkz1xs8a90h0s09rj0gd7w";
  };

  meta = {
    description = "R package effsize";
    homepage = "https://cran.r-project.org/package=effsize";
  };
}
