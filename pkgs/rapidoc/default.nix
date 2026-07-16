{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "rapidoc";
  version = "9.3.4";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/rapidoc_9.3.4.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/rapidoc/rapidoc_9.3.4.tar.gz"
    ];
    sha256 = "1nzwf4wx8syl9xpvmqn3mz72nhj80ssnm6wbfwnasg003ccfi43c";
  };

  meta = {
    description = "R package rapidoc";
    homepage = "https://cran.r-project.org/package=rapidoc";
  };
}
