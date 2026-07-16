{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "numbers";
  version = "0.9-2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/numbers_0.9-2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/numbers/numbers_0.9-2.tar.gz"
    ];
    sha256 = "1kgzb9pqdkghkch6l4zhbngrzbnwkqgz6hgi8wkswvm12831bqq1";
  };

  meta = {
    description = "R package numbers";
    homepage = "https://cran.r-project.org/package=numbers";
  };
}
