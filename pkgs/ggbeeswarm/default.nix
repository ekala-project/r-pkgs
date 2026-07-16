{
  buildRPackage,
  fetchurl,
  beeswarm,
  cli,
  ggplot2,
  lifecycle,
  vipor,
}:

buildRPackage {
  pname = "ggbeeswarm";
  version = "0.7.3";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggbeeswarm_0.7.3.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggbeeswarm/ggbeeswarm_0.7.3.tar.gz"
    ];
    sha256 = "0q3hgi45jbnnbmpd1ihs1i2anc73bcmjmw0cfbjl70z3acg3hd2q";
  };

  propagatedBuildInputs = [
    beeswarm
    cli
    ggplot2
    lifecycle
    vipor
  ];

  meta = {
    description = "R package ggbeeswarm";
    homepage = "https://cran.r-project.org/package=ggbeeswarm";
  };
}
