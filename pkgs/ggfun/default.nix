{
  buildRPackage,
  fetchurl,
  cli,
  dplyr,
  ggplot2,
  rlang,
  scales,
  yulab_utils,
}:

buildRPackage {
  pname = "ggfun";
  version = "0.2.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggfun_0.2.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggfun/ggfun_0.2.0.tar.gz"
    ];
    sha256 = "048p3922sd3fhssf042xnx30jrs2nkn1kn7xq4m88w972p9ngln5";
  };

  propagatedBuildInputs = [
    cli
    dplyr
    ggplot2
    rlang
    scales
    yulab_utils
  ];

  meta = {
    description = "R package ggfun";
    homepage = "https://cran.r-project.org/package=ggfun";
  };
}
