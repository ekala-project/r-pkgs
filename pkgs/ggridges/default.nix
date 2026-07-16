{
  buildRPackage,
  fetchurl,
  ggplot2,
  scales,
  withr,
}:

buildRPackage {
  pname = "ggridges";
  version = "0.5.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggridges_0.5.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggridges/ggridges_0.5.7.tar.gz"
    ];
    sha256 = "0cqid04hfcgcbw0y5nw833hdjl3ik5w9l97axsrxy7m3lgzqkfpw";
  };

  propagatedBuildInputs = [
    ggplot2
    scales
    withr
  ];

  meta = {
    description = "R package ggridges";
    homepage = "https://cran.r-project.org/package=ggridges";
  };
}
