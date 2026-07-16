{
  buildRPackage,
  fetchurl,
  ggplot2,
  gridExtra,
  scales,
}:

buildRPackage {
  pname = "ruv";
  version = "0.9.7.1";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ruv_0.9.7.1.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ruv/ruv_0.9.7.1.tar.gz"
    ];
    sha256 = "1n4q9mrp9f644spbns6bbnzmlabrg90hwkdfg3hnm3rxp9b4xid0";
  };

  propagatedBuildInputs = [
    ggplot2
    gridExtra
    scales
  ];

  meta = {
    description = "R package ruv";
    homepage = "https://cran.r-project.org/package=ruv";
  };
}
