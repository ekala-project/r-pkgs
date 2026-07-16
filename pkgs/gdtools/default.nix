{
  buildRPackage,
  fetchurl,
  Rcpp,
  fontquiver,
  htmltools,
  systemfonts,
}:

buildRPackage {
  pname = "gdtools";
  version = "0.5.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/gdtools_0.5.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/gdtools/gdtools_0.5.0.tar.gz"
    ];
    sha256 = "15gklyln0260q1jbpx5n2kr472dv3ij3qw7298hciflf0q80isdf";
  };

  propagatedBuildInputs = [
    Rcpp
    fontquiver
    htmltools
    systemfonts
  ];

  meta = {
    description = "R package gdtools";
    homepage = "https://cran.r-project.org/package=gdtools";
  };
}
