{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "mondate";
  version = "1.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mondate_1.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mondate/mondate_1.0.tar.gz"
    ];
    sha256 = "1spz3xv450mw0i984hjp6r4lk653nmjawf9cipv9z7isc4zv3ac3";
  };

  meta = {
    description = "R package mondate";
    homepage = "https://cran.r-project.org/package=mondate";
  };
}
