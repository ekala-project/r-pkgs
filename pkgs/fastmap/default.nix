{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "fastmap";
  version = "1.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/fastmap_1.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/fastmap/fastmap_1.2.0.tar.gz"
    ];
    sha256 = "0ilj7gcbnha6l61sqzk6wrj6l08mxyay49957izha7axj6i09nmi";
  };

  meta = {
    description = "R package fastmap";
    homepage = "https://cran.r-project.org/package=fastmap";
  };
}
