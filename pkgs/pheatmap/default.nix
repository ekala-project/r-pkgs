{
  buildRPackage,
  fetchurl,
  RColorBrewer,
  gtable,
  scales,
}:

buildRPackage {
  pname = "pheatmap";
  version = "1.0.13";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/pheatmap_1.0.13.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/pheatmap/pheatmap_1.0.13.tar.gz"
    ];
    sha256 = "1xs265c5lb15ahsm5l9mnrzcb5c2qaw9g2n9bks28xkqbx64vhsa";
  };

  propagatedBuildInputs = [
    RColorBrewer
    gtable
    scales
  ];

  meta = {
    description = "R package pheatmap";
    homepage = "https://cran.r-project.org/package=pheatmap";
  };
}
