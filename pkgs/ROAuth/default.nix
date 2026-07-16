{
  buildRPackage,
  fetchurl,
  RCurl,
  digest,
}:

buildRPackage {
  pname = "ROAuth";
  version = "0.9.6";

  src = fetchurl {
    urls = [
      "https://cran.r-project.org/src/contrib/ROAuth_0.9.6.tar.gz"
      "https://cran.r-project.org/src/contrib/Archive/ROAuth/ROAuth_0.9.6.tar.gz"
    ];
    sha256 = "0vhsp8qybrl94898m2znqs7hmlnlbsh8sm0q093dwdb2lzrqww4m";
  };

  propagatedBuildInputs = [
    RCurl
    digest
  ];

  meta = {
    description = "R package ROAuth";
    homepage = "https://cran.r-project.org/package=ROAuth";
  };
}
