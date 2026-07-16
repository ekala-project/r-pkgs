{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "tester";
  version = "0.3.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/tester_0.3.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/tester/tester_0.3.0.tar.gz"
    ];
    sha256 = "1vpr0341j97l7sb6k2z9wpk9wp5jyxarmhwimq1d9pyasacsyj5n";
  };

  meta = {
    description = "R package tester";
    homepage = "https://cran.r-project.org/package=tester";
  };
}
