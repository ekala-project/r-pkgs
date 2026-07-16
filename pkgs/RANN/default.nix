{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "RANN";
  version = "2.6.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/RANN_2.6.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/RANN/RANN_2.6.2.tar.gz"
    ];
    sha256 = "0wlpkf6vilw871ac2bxy5nr790cfs6sax5k8m0fhasxbansxbxvf";
  };

  meta = {
    description = "R package RANN";
    homepage = "https://cran.r-project.org/package=RANN";
  };
}
