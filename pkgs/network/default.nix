{
  buildRPackage,
  fetchurl,
  magrittr,
  statnet_common,
  tibble,
}:

buildRPackage {
  pname = "network";
  version = "1.20.0";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/network_1.20.0.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/network/network_1.20.0.tar.gz"
    ];
    sha256 = "07w5xj629zy204cs0ndqsapsmwf7cv5487yz3y9mc3sfbfz5dnam";
  };

  propagatedBuildInputs = [
    magrittr
    statnet_common
    tibble
  ];

  meta = {
    description = "R package network";
    homepage = "https://cran.r-project.org/package=network";
  };
}
