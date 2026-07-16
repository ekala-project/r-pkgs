{
  buildRPackage,
  fetchurl,
  ggplot2,
  gridExtra,
  viridisLite,
}:

buildRPackage {
  pname = "viridis";
  version = "0.6.5";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/viridis_0.6.5.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/viridis/viridis_0.6.5.tar.gz"
    ];
    sha256 = "0p00s24d8bsifw3r0afwrx98bqixnf5krpbw42hfwp8ipsv5qaw6";
  };

  propagatedBuildInputs = [
    ggplot2
    gridExtra
    viridisLite
  ];

  meta = {
    description = "R package viridis";
    homepage = "https://cran.r-project.org/package=viridis";
  };
}
