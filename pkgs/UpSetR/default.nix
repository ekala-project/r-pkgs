{
  buildRPackage,
  fetchurl,
  ggplot2,
  gridExtra,
  plyr,
  scales,
}:

buildRPackage {
  pname = "UpSetR";
  version = "1.4.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/UpSetR_1.4.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/UpSetR/UpSetR_1.4.0.tar.gz"
    ];
    sha256 = "007i0njnjjy7vbrxabwav7a1kk2n0hn2mkvqsdzzfk10ckp5y7im";
  };

  propagatedBuildInputs = [
    ggplot2
    gridExtra
    plyr
    scales
  ];

  meta = {
    description = "R package UpSetR";
    homepage = "https://cran.r-project.org/package=UpSetR";
  };
}
