{
  buildRPackage,
  fetchurl,
  MASS,
  dplyr,
  rlang,
  tidyr,
}:

buildRPackage {
  pname = "mosaicCore";
  version = "0.9.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/mosaicCore_0.9.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/mosaicCore/mosaicCore_0.9.5.tar.gz"
    ];
    sha256 = "0j0a5i3578rgwcscs9w6pgy692ddnz5x7836bnh0b844zwxm0jzz";
  };

  propagatedBuildInputs = [
    MASS
    dplyr
    rlang
    tidyr
  ];

  meta = {
    description = "R package mosaicCore";
    homepage = "https://cran.r-project.org/package=mosaicCore";
  };
}
