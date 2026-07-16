{
  buildRPackage,
  fetchurl,
  ggplot2,
  rlang,
  scales,
}:

buildRPackage {
  pname = "ggsci";
  version = "5.0.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggsci_5.0.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggsci/ggsci_5.0.0.tar.gz"
    ];
    sha256 = "1y1y3lz2cp02dn5c4l8nsfn4cji7q6djghp84npgiq3ps4pdc76l";
  };

  propagatedBuildInputs = [
    ggplot2
    rlang
    scales
  ];

  meta = {
    description = "R package ggsci";
    homepage = "https://cran.r-project.org/package=ggsci";
  };
}
