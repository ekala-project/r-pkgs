{
  buildRPackage,
  fetchurl,
  systemfonts,
  textshaping,
}:

buildRPackage {
  pname = "ragg";
  version = "1.5.2";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ragg_1.5.2.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ragg/ragg_1.5.2.tar.gz"
    ];
    sha256 = "05lgn8lfkm81vmizxxq0s7447p6qv6hn00n96nl88gj0981j3b8x";
  };

  propagatedBuildInputs = [
    systemfonts
    textshaping
  ];

  meta = {
    description = "R package ragg";
    homepage = "https://cran.r-project.org/package=ragg";
  };
}
