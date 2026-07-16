{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "zip";
  version = "2.3.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/zip_2.3.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/zip/zip_2.3.3.tar.gz"
    ];
    sha256 = "0lls4hllimjnl9bhr31y9x3fj8vdszxbaj6p781kgfdpz0j0nifh";
  };

  meta = {
    description = "R package zip";
    homepage = "https://cran.r-project.org/package=zip";
  };
}
