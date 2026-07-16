{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "oaqc";
  version = "2.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/oaqc_2.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/oaqc/oaqc_2.0.0.tar.gz"
    ];
    sha256 = "0f777a8i03mb4f4q2zdacglyn0lbmf5b7c6682ssw2dlnm14jhz9";
  };

  meta = {
    description = "R package oaqc";
    homepage = "https://cran.r-project.org/package=oaqc";
  };
}
