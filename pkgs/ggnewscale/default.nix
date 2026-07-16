{
  buildRPackage,
  fetchurl,
  ggplot2,
}:

buildRPackage {
  pname = "ggnewscale";
  version = "0.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ggnewscale_0.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ggnewscale/ggnewscale_0.5.2.tar.gz"
    ];
    sha256 = "1j2qcf8hlwlc462g1giciv8srdpqw613xfz91xya007ac107arfp";
  };

  propagatedBuildInputs = [
    ggplot2
  ];

  meta = {
    description = "R package ggnewscale";
    homepage = "https://cran.r-project.org/package=ggnewscale";
  };
}
