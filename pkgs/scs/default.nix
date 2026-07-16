{
  buildRPackage,
  fetchurl,
}:

buildRPackage {
  pname = "scs";
  version = "3.2.7";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/scs_3.2.7.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/scs/scs_3.2.7.tar.gz"
    ];
    sha256 = "1jmag5s79vg7lvgv6h3ns72zaw2nl2hcbfbq5vi17xv5agwh8h7q";
  };

  meta = {
    description = "R package scs";
    homepage = "https://cran.r-project.org/package=scs";
  };
}
