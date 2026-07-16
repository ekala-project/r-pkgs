{
  buildRPackage,
  fetchurl,
  network,
  statnet_common,
}:

buildRPackage {
  pname = "sna";
  version = "2.8";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/sna_2.8.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/sna/sna_2.8.tar.gz"
    ];
    sha256 = "0k4r5a3p3ngdc8szy6xdvgaibasggcrpb5hdxplnmmawa27dn2pj";
  };

  propagatedBuildInputs = [
    network
    statnet_common
  ];

  meta = {
    description = "R package sna";
    homepage = "https://cran.r-project.org/package=sna";
  };
}
