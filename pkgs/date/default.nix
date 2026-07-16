{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "date";
  version = "1.2-43";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/date_1.2-43.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/date/date_1.2-43.tar.gz"
    ];
    sha256 = "1g4n5k9jmyrmxqp79zn85mjwmzxzh18wwamg5nssf5ixavfrci4i";
  };

  meta = {
    description = "R package date";
    homepage = "https://cran.r-project.org/package=date";
  };
}
