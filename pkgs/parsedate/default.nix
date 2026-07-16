{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "parsedate";
  version = "1.3.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/parsedate_1.3.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/parsedate/parsedate_1.3.2.tar.gz"
    ];
    sha256 = "0w0phy4jrhh14la507p9051skmmymbdza8kz8jpvhvkg81sdrd79";
  };

  meta = {
    description = "R package parsedate";
    homepage = "https://cran.r-project.org/package=parsedate";
  };
}
