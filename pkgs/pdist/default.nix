{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "pdist";
  version = "1.2.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pdist_1.2.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pdist/pdist_1.2.1.tar.gz"
    ];
    sha256 = "0bvg8si81hs79v39d7svv4zbv2p0sk2r6m9vamibvkh9qvl4x406";
  };

  meta = {
    description = "R package pdist";
    homepage = "https://cran.r-project.org/package=pdist";
  };
}
